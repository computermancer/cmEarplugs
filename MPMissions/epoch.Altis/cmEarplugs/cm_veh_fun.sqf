//============================================
// cmEarplugs Script
// written by computermancer
// superfunserver.com
//============================================
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//DO NOT EDIT BELOW THIS LINE UNLESS YOU KNOW WHAT YOU ARE DOING
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

EP_req_1 = {

	private ["_cm_trigger2"];
	_cm_trigger2 = vehicle player != player;
	_cm_trigger2;
	
};



cm_EP_LOOP = {

	_imStillHere = alive player;
	while {_imStillHere} do {
	
		waitUntil {uisleep 0.5; vehicle player != player};
		
			_cm_whatImInATM = vehicle player;
			inCaseofDeath = _cm_whatImInATM;
			if (InsertAutoEarplugs) then {
				if (earplugsout) then { 
					[] call cmMuteSound;
					[] spawn cmMuteMessage;
					earplugsout=false;
				};
			};

			_cm_whatImInATM addEventHandler ["GetOut", {[_this] call cmGetOut}];
			if (isNil {_cm_whatImInATM getVariable "HasEarplugMenu"}) then {_cm_whatImInATM setVariable["HasEarplugMenu", "hasNoMenu"];};	
			_checkington = (_cm_whatImInATM getVariable "HasEarplugMenu");
			if (_checkington == "hasNoMenu") then {
				_null = _cm_whatImInATM addaction ["<img image='cmEarplugs\earplugs.paa' /><t color=""#38eeff""> Earplugs</t>","[] call cm_Earplugs_FUNc","",0,false,false,"","[] call EP_req_1"];							
				_cm_whatImInATM setVariable ["HasEarplugMenu","hasMenu"];
				systemChat "Earplugs menu has been added.";
			};
			
		waitUntil {uisleep 0.5; vehicle player == player}; 

	};
	
};


cmGetOut = {

	_feedME = _this select 0;
	_fedTrueName = _feedME select 0;
	theOneTrueName = _fedTrueName;
	theOneTrueName setVariable ["HasEarplugMenu","hasMenu"];
	if (RemoveAutoEarplugs) then {
		if (!earplugsout) then { 
			[] call cmReturnSound;
			[] spawn cmReturnSoundMsg;
			earplugsout=true;
			
		};
	};
};


cmEPEHLoop = {

			while {true} do {
			
			diag_log "EPEH loopstarted";
			
				cmPress_F4 = (findDisplay 46) displayAddEventHandler ["KeyDown","if ((_this select 1) == 62) then {SuperFunEPEHVariable = true;};"];
		
				waitUntil {uisleep 0.5; SuperFunEPEHVariable};
					

					(findDisplay 46) displayRemoveEventHandler ["KeyDown", cmPress_F4];
					
					[] call cm_Earplugs_FUNc;
					

				waitUntil {uisleep 0.5; !SuperFunEPEHVariable};
				
					
					systemchat format ["You can toggle earplugs again in %1 seconds.", cmTImeToWaitEP];
					
					uisleep cmTImeToWaitEP;



			};

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
	
	SuperFunEPEHVariable = false;
	
};

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//END ALL
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

