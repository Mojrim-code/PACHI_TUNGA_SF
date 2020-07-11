--[[
	Myte2 Server Files
	PACHI | Tunga
	https://forum.turkmmo.com/uye/2127751-pachi/
--]]
quest premium_boxes begin
	state start begin
		when 81501.use with utils.is_feature_value_pack_enabled() == true begin
			if pc.is_affect_flag(56) == true then
				syschat("Zaten de�erli paket kullanm��s�n.")
			elseif pc.is_busy() == true then
				syschat("Karakterin �uanda me�gul.")
			elseif pc.count_item(item.get_vnum()) < 1 then
				syschat("Envanterinde de�erli paket bulamad�m.")
			elseif pc.is_gm() == true then
				syschat("Y�netim ekibindeki kullan�c�lar de�erli paket kullanamazlar.")
			else
				if item.get_count() > 1 then
					item.set_count(item.get_count()-1)
				else
					item.remove()
				end
				local timeval = 86400*7
				pc.set_premium(get_global_time()+timeval)
				syschat(string.format("De�erli Paket i�eri�i %s g�n boyunca karakterine i�leyecek.", timeval/86400))
			end
		end
		when 81502.use with utils.is_feature_value_pack_enabled() == true begin
			if pc.is_affect_flag(56) == true then
				syschat("Zaten de�erli paket kullanm��s�n.")
			elseif pc.is_busy() == true then
				syschat("Karakterin �uanda me�gul.")
			elseif pc.count_item(item.get_vnum()) < 1 then
				syschat("Envanterinde de�erli paket bulamad�m.")
			elseif pc.is_gm() == true then
				syschat("Y�netim ekibindeki kullan�c�lar de�erli paket kullanamazlar.")
			else
				if item.get_count() > 1 then
					item.set_count(item.get_count()-1)
				else
					item.remove()
				end
				local timeval = 86400*14
				pc.set_premium(get_global_time()+timeval)
				syschat(string.format("De�erli Paket i�eri�i %s g�n boyunca karakterine i�leyecek.", timeval/86400))
			end
		end
		when 81503.use with utils.is_feature_value_pack_enabled() == true begin
			if pc.is_affect_flag(56) == true then
				syschat("Zaten de�erli paket kullanm��s�n.")
			elseif pc.is_busy() == true then
				syschat("Karakterin �uanda me�gul.")
			elseif pc.count_item(item.get_vnum()) < 1 then
				syschat("Envanterinde de�erli paket bulamad�m.")
			elseif pc.is_gm() == true then
				syschat("Y�netim ekibindeki kullan�c�lar de�erli paket kullanamazlar.")
			else
				if item.get_count() > 1 then
					item.set_count(item.get_count()-1)
				else
					item.remove()
				end
				local timeval = 86400*30
				pc.set_premium(get_global_time()+timeval)
				syschat(string.format("De�erli Paket i�eri�i %s g�n boyunca karakterine i�leyecek.", timeval/86400))
			end
		end
	end
end