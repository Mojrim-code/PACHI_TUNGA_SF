--[[
	Myte2 Server Files
	PACHI | Tunga
	https://forum.turkmmo.com/uye/2127751-pachi/
--]]
quest christmas_costume_shop_box begin
	state start begin
	
		function give_costume_item(costume_vnum, duration)
			
			-- provide the new costume
			local remain_time = 86400*duration
			pc.give_item2_select(costume_vnum,1)
			item.set_socket(0, get_global_time()+remain_time)
		end

		
		when 38056.use begin
			local n = number (1,100)
			if n <= 1 then
				pc.give_item2(71085,1)
			elseif n <= 2 then
				pc.give_item2(70039,1)
			elseif n <= 6 then
				pc.give_item2(71032,1)
			elseif n <= 10 then
				pc.give_item2(70024,1)
			elseif n <= 24 then
				pc.give_item2(25040,1)
			elseif n <= 36 then
				pc.give_item2(71012,1)
			elseif n <= 47 then
				pc.give_item2(71130,3)
			elseif n <= 58 then
				pc.give_item2(71083,1)
			elseif n <= 69 then
				pc.give_item2(71004,10)
			elseif n <= 79 then
				pc.give_item2(71018,2)
			elseif n <= 80 then
				pc.give_item2(25041,1)
			elseif n <= 82 then
				christmas_costume_shop_box.give_costume_item(41147, 30)
			elseif n <= 84 then
				christmas_costume_shop_box.give_costume_item(41148, 30)
			elseif n <= 87 then
				christmas_costume_shop_box.give_costume_item(45082, 30)
			elseif n <= 90 then
				christmas_costume_shop_box.give_costume_item(45084, 30)
			elseif n <= 92 then
				christmas_costume_shop_box.give_costume_item(41149, 30)
			elseif n <= 94 then
				christmas_costume_shop_box.give_costume_item(41150, 30)
			elseif n <= 97 then
				christmas_costume_shop_box.give_costume_item(45083, 30)
			else
				christmas_costume_shop_box.give_costume_item(45084, 30)
			end
			
			pc.remove_item(38056,1)
		end

	end
end

