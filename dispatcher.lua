-- dispatcher.lua

--
-- Filter f�r den Globaldispatcher
-- 
-- Globales Array "arg" enth�lt die Daten vom Auswertermodul
--
-- R�ckgabewert: 0 = an Clients senden, 1= nicht an Clients senden
--

local sperrliste = {"0174784", "1398098"} ;

function filter()
-- wird f�r jedes Telegramm (pocsag, fms, zvei) aufgerufen
	for index,testwert in pairs(sperrliste) do 
		if (testwert==arg["ric"]) then
			return 1
		end
	end
	
	return 0;
end

