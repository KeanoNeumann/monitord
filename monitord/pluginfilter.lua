-- pluginfilter.lua

--
-- Filter f�r den SocketServer - wird pro aktiven Client aufgerufen
-- 
-- Globales Array "arg" enth�lt die Daten vom Auswertermodul
--
-- Zus�tzliche Werte im Array:
--
-- plugin_name:			z.B. mysql (aus monitord.xml)
--
-- R�ckgabewert: 0 = an Client senden, 1= nicht an Client senden, alle anderen = an Client senden
--

local toShowZVEI = {"99000", "99001"} ;

function pluginFilter()
	if (arg["plugin_name"]=="mysql") then
	
		for index,testwert in pairs(toShowZVEI) do 
			if (testwert==arg["zvei"]) then
				return 1;
			end
		end
	end

	
	-- change return value in next line to "return 1" to enable filtering defined above!
	return 0;
end
