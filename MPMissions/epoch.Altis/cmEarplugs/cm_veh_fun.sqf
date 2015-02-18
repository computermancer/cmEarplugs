//============================================
// cmEarplugs Script
// written by computermancer
// superfunserver.com
//============================================

//FUNCTIONS
EP_req_1 = {
private ["_cm_trigger2"];
_cm_trigger2 = vehicle player == player;
_cm_trigger2;
};

cm_Earplugs_FUNc = {

		if (earplugsout) then {
			hint "You have inserted your earplugs.";
			1 fadeSound 0.25;
			earplugsout=false;
			
		} else {
		
			hint "You have removed your earplugs.";
			1 fadeSound 1;		
			earplugsout=true;
		};
};

cm_Veh_Loop = {

		while {alive player} do {

					waitUntil {vehicle player != player}; //Got in a vehicle
					
			

					
						private ["_cyclicBS","_cm_whatImInNow","_checkington","_veh_IDed","_cm_whatImIn"];
						_cm_whatImIn = vehicle player;
						_veh_IDed = (!isNil{_cm_whatImIn});
						
					waitUntil {_veh_IDed};
					
						if (InsertAutoEarplugs) then {
							if (earplugsout) then { 
						
								6 fadeSound 0.25;
								hint "Earplugs have been auto-inserted...";
								earplugsout=false;
								
							};

						};

						_cm_whatImInNow = vehicle player;
						
						if (isNil {_cm_whatImInNow getVariable "HasEarplugMenu"}) then {_cm_whatImInNow setVariable["HasEarplugMenu", "hasNoMenu", true];publicVariable "HasEarplugMenu";};
						
						_checkington = (_cm_whatImInNow getVariable "HasEarplugMenu");
						
						if (_checkington == "hasMenu") then {} else {;
							
							
							_cm_whatImInNow addaction ["<img image='cmEarplugs\earplugs.paa' /><t color=""#38eeff""> Earplugs</t>","[] call cm_Earplugs_FUNc","",0,false,false,"","[] call EP_req_1"];							
							_cm_whatImInNow setVariable ["HasEarplugMenu","hasMenu",true];
							publicVariable "HasEarplugMenu";
							systemChat "Earplugs menu has been added.";

						};
						
						_cyclicBS = _cm_whatImInNow addaction ["<img image='cmEarplugs\earplugs.paa' /><t color=""#38eeff""> Earplugs</t>","[] call cm_Earplugs_FUNc","",0,false,false,"",""];

						
					waitUntil {vehicle player == player}; //Got out of a vehicle
					
					
						_cm_whatImInNow removeAction _cyclicBS;
					
				
						if (RemoveAutoEarplugs) then {
							if (!earplugsout) then { 
						
								12 fadeSound 1;
								hint "Earplugs have been auto-removed.";
								earplugsout=true;
							
							};
						};
		};

};	
	
//And NOW ... DO THIS STUFF

5 fadeSound 1;
earplugsout=true;	
[] spawn cm_Veh_Loop;