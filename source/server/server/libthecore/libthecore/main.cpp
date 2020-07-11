#include "stdafx.h"
#include "memory.h"

LPHEART thecore_heart = NULL;
extern void GOST_Init();
volatile int shutdowned = FALSE;
volatile int tics = 0;
unsigned int thecore_profiler[NUM_PF];

static int pid_init(void)
{
	FILE* fp;
	if ((fp = fopen("pid", "w")))
	{
		fprintf(fp, "%d", getpid());
		fclose(fp);
		sys_err("\nStart of pid: %d\n", getpid());
	}
	else
	{
		printf("pid_init(): could not open file for writing. (filename: ./pid)");
		sys_err("\nError writing pid file\n");
		return false;
	}
	return true;
}

static void pid_deinit(void)
{
	remove("./pid");
	sys_err("\nEnd of pid\n");
}

int thecore_init(int fps, HEARTFUNC heartbeat_func)
{
	srandom(time(0) + getpid() + getuid());
	srandomdev();
	signal_setup();

	if (!log_init() || !pid_init())
	{
		return false;
	}

	GOST_Init();

	thecore_heart = heart_new(1000000 / fps, heartbeat_func);
	return true;
}

void thecore_shutdown()
{
	shutdowned = TRUE;
}

int thecore_idle(void)
{
	thecore_tick();

	if (shutdowned)
	{
		return 0;
	}

	int pulses;
	DWORD t = get_dword_time();

	if (!(pulses = heart_idle(thecore_heart)))
	{
		thecore_profiler[PF_IDLE] += (get_dword_time() - t);
		return 0;
	}

	thecore_profiler[PF_IDLE] += (get_dword_time() - t);
	return pulses;
}

void thecore_destroy(void)
{
	pid_deinit();
	log_destroy();
}

int thecore_pulse(void)
{
	return (thecore_heart->pulse);
}

float thecore_pulse_per_second(void)
{
	return ((float)thecore_heart->passes_per_sec);
}

float thecore_time(void)
{
	return ((float)thecore_heart->pulse / (float)thecore_heart->passes_per_sec);
}

int thecore_is_shutdowned(void)
{
	return shutdowned;
}

void thecore_tick(void)
{
	++tics;
}