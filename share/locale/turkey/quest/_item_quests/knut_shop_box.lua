--[[
	Myte2 Server Files
	PACHI | Tunga
	https://forum.turkmmo.com/uye/2127751-pachi/
--]]
quest knut_shop_box begin
	
	state start begin
		when 38057.use begin
			local n = number (1,100)
			if n <= 11 then
				pc.changegold(30000)
			elseif n <= 22 then
				pc.changegold(50000)
			elseif n <= 33 then
				pc.changegold(100000)
			elseif n <= 40 then
				pc.give_item2(71004,10)
			elseif n <= 48 then
				pc.give_item2(30319,3)
			elseif n <= 56 then
				pc.give_item2(25040,3)
			elseif n <= 61 then
				pc.give_item2(71001,2)
			elseif n <= 67 then
				pc.give_item2(71018,2)
			elseif n <= 73 then
				pc.give_item2(71083,1)
			elseif n <= 79 then
				pc.give_item2(71012,1)
			elseif n <= 85 then
				pc.give_item2(25040,1)
			elseif n <= 89 then
				pc.give_item2(70024,1)
			elseif n <= 93 then
				pc.give_item2(71032,1)
			elseif n <= 95 then
				pc.give_item2(70039,1)
			elseif n <= 97 then
				pc.give_item2(71085,1)
			elseif n <= 99 then
				local remain_time = 86400*(30+number(0,7))
				pc.give_item2_select(53008,1)
				item.set_socket(0, get_global_time()+remain_time)
			else 
				pc.give_item2(25041,1)
			end
			pc.remove_item(38057,1)
		end

	end
end

