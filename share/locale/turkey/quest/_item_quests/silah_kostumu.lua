--[[
	Myte2 Server Files
	PACHI | Tunga
	https://forum.turkmmo.com/uye/2127751-pachi/
--]]
quest silah_kostumu begin
	state start begin
		when 30335.use begin 
		if pc.count_item(30335) < 1 then 
			say_title("Bug Kontrol ") 
			say_title("Envanterindeki nesne kaybolmu�. ") 
			return
			end
			local nevi2secbakalim = select("K�l�� ","Han�er ","Yay ","�ift El ","�an","Yelpaze ","Pen�e ","Kullanmak �stemiyorum. ")
			if nevi2secbakalim == 1 then
				local silah1 = select ("�eker �ubu�u B��a�� ","Kesici Di� K�l�c� ", "Kullanmak �stemiyorum. ")
				if silah1 == 1 then
				pc.give_item2("40115", 1)
				pc.remove_item(30335)
				elseif silah1 == 2 then
				pc.give_item2("40101", 1)
				pc.remove_item(30335)
				elseif silah1 == 3 then return end
			end
			if nevi2secbakalim == 2 then
				local hancer1 = select ("�eker �ubu�u Han�eri ","Kesici Di� Han�er ", "Kullanmak �stemiyorum. ")
				if hancer1 == 1 then
				pc.give_item2("40116", 1)
				pc.remove_item(30335)
				elseif hancer1 == 2 then
				pc.give_item2("40102", 1)
				pc.remove_item(30335)
				elseif hancer1 == 3 then return end
			end
			if nevi2secbakalim == 3 then
				local yay1 = select ("Elf Yay� ","Kesici Di� Yay� ", "Kullanmak �stemiyorum. ")
				if yay1 == 1 then
				pc.give_item2("40117", 1)
				pc.remove_item(30335)
				elseif yay1 == 2 then
				pc.give_item2("40103", 1)
				pc.remove_item(30335)
				elseif yay1 == 3 then return end
			end
			if nevi2secbakalim == 4 then
				local ciftel1 = select ("Kurabiye Geni� M�zra�� ","Kesici Di� M�zra�� ", "Kullanmak �stemiyorum. ")
				if ciftel1 == 1 then
				pc.give_item2("40118", 1)
				pc.remove_item(30335)
				elseif ciftel1 == 2 then
				pc.give_item2("40104", 1)
				pc.remove_item(30335)
				elseif ciftel1 == 3 then return end
			end
			if nevi2secbakalim == 5 then
				local can1 = select ("�eker �ubu�u �an� ","Kesici Di� �an� ", "Kullanmak �stemiyorum. ")
				if can1 == 1 then
				pc.give_item2("40119", 1)
				pc.remove_item(30335)
				elseif can1 == 2 then
				pc.give_item2("40105", 1)
				pc.remove_item(30335)
				elseif can1 == 3 then return end
			end
			if nevi2secbakalim == 6 then
				local yelpaze1 = select ("�eker �ubu�u Yelpazesi ","Kesici Di� Yelpazesi ", "Kullanmak �stemiyorum. ")
				if yelpaze1 == 1 then
				pc.give_item2("40120", 1)
				pc.remove_item(30335)
				elseif yelpaze1 == 2 then
				pc.give_item2("40106", 1)
				pc.remove_item(30335)
				elseif yelpaze1 == 3 then return end
			end
			if nevi2secbakalim == 7 then
				local pence1 = select ("Rudolph Pen�eleri ","Kesici Di� Pen�esi ", "Kullanmak �stemiyorum. ")
				if pence1 == 1 then
				pc.give_item2("40121", 1)
				pc.remove_item(30335)
				elseif pence1 == 2 then
				pc.give_item2("40107", 1)
				pc.remove_item(30335)
				elseif pence1 == 3 then return end
			end
			end
	end end