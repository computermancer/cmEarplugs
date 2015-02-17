//============================================
// cmEarplugs Script
// written by computermancer
// superfunserver.com
//============================================

//FUNCTIONS

cm_Earplugs_FUNc = {

		if (earplugsout) then {
			hint "Earplugs have been put in.";
			1 fadeSound 0.25;
			earplugsout=false;
			
		} else {
		
			hint "Earplugs have been taken out.";
			1 fadeSound 1;		
			earplugsout=true;
		};
};


cm_Veh_Loop = {

		while {alive player} do {

				waitUntil {vehicle player != player};
					private ["_cm_whatImInNow","_checkington","_veh_IDed","_cm_whatImIn"];
					
					_cm_whatImIn = vehicle player;
					_veh_IDed = (!isNil{_cm_whatImIn});
					
				waitUntil {_veh_IDed};

					_cm_whatImInNow = vehicle player;
					
					if (isNil {_cm_whatImInNow getVariable "HasEarplugMenu"}) then {_cm_whatImInNow setVariable["HasEarplugMenu", "hasNoMenu", true];publicVariable "HasEarplugMenu";};
					
					_checkington = (_cm_whatImInNow getVariable "HasEarplugMenu");
					
					if (_checkington == "hasMenu") then {} else {
					
						_null = [_cm_whatImInNow] execVM "cmEarplugs\cm_veh.sqf";
						waitUntil {scriptDone _null};

						hint "Earplugs menu has been added...";

					};
					
					
				waitUntil {vehicle player == player};
				
					if (!earplugsout) then { 
					
						3 fadeSound 1;
						hint "Earplugs have been removed...";
						earplugsout=true;
						
					};
		};

};	
	
//And NOW ... DO THIS STUFF
	
earplugsout=true;	
[] spawn cm_Veh_Loop;
