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


cm_EPEH_Loop = {
					
		
			while {true} do {
			
					//systemchat "EPEH loopstarted";
					
					if (KeySelect_cm_F4) then {cmPress_F4 = (findDisplay 46) displayAddEventHandler ["KeyDown","if ((_this select 1) == 62) then {SuperFunEPEHVariable = true;};"];};
					if (KeySelect_cm_F5) then {cmPress_F5 = (findDisplay 46) displayAddEventHandler ["KeyDown","if ((_this select 1) == 63) then {SuperFunEPEHVariable = true;};"];};
					if (KeySelect_cm_F6) then {cmPress_F6 = (findDisplay 46) displayAddEventHandler ["KeyDown","if ((_this select 1) == 64) then {SuperFunEPEHVariable = true;};"];};
					if (KeySelect_cm_Insert) then {cmPress_Insert = (findDisplay 46) displayAddEventHandler ["KeyDown","if ((_this select 1) == 210) then {SuperFunEPEHVariable = true;};"];};
					if (KeySelect_cm_Home) then {cmPress_Home = (findDisplay 46) displayAddEventHandler ["KeyDown","if ((_this select 1) == 199) then {SuperFunEPEHVariable = true;};"];};
					if (KeySelect_cm_RightControl) then {cmPress_RightControl = (findDisplay 46) displayAddEventHandler ["KeyDown","if ((_this select 1) == 157) then {SuperFunEPEHVariable = true;};"];};
					if (KeySelect_cm_RightAlt) then {cmPress_RightAlt = (findDisplay 46) displayAddEventHandler ["KeyDown","if ((_this select 1) == 184) then {SuperFunEPEHVariable = true;};"];};
					if (KeySelect_cm_DownArrow) then {cmPress_DownArrow = (findDisplay 46) displayAddEventHandler ["KeyDown","if ((_this select 1) == 208) then {SuperFunEPEHVariable = true;};"];};
					if (KeySelect_cm_UpArrow) then {cmPress_UpArrow = (findDisplay 46) displayAddEventHandler ["KeyDown","if ((_this select 1) == 200) then {SuperFunEPEHVariable = true;};"];};
					if (KeySelect_cm_LeftArrow) then {cmPress_LeftArrow = (findDisplay 46) displayAddEventHandler ["KeyDown","if ((_this select 1) == 203) then {SuperFunEPEHVariable = true;};"];};
					if (KeySelect_cm_RightArrow) then {cmPress_RightArrow = (findDisplay 46) displayAddEventHandler ["KeyDown","if ((_this select 1) == 205) then {SuperFunEPEHVariable = true;};"];};
	
	
		
				waitUntil {uisleep 0.5; SuperFunEPEHVariable};
					

					if (KeySelect_cm_F4) then {(findDisplay 46) displayRemoveEventHandler ["KeyDown", cmPress_F4];};
					if (KeySelect_cm_F5) then {(findDisplay 46) displayRemoveEventHandler ["KeyDown", cmPress_F5];};
					if (KeySelect_cm_F6) then {(findDisplay 46) displayRemoveEventHandler ["KeyDown", cmPress_F6];};
					if (KeySelect_cm_Insert) then {(findDisplay 46) displayRemoveEventHandler ["KeyDown", cmPress_Insert];};
					if (KeySelect_cm_Home) then {(findDisplay 46) displayRemoveEventHandler ["KeyDown", cmPress_Home];};
					if (KeySelect_cm_RightControl) then {(findDisplay 46) displayRemoveEventHandler ["KeyDown", cmPress_RightControl];};
					if (KeySelect_cm_RightAlt) then {(findDisplay 46) displayRemoveEventHandler ["KeyDown", cmPress_RightAlt];};
					if (KeySelect_cm_DownArrow) then {(findDisplay 46) displayRemoveEventHandler ["KeyDown", cmPress_DownArrow];};
					if (KeySelect_cm_UpArrow) then {(findDisplay 46) displayRemoveEventHandler ["KeyDown", cmPress_UpArrow];};
					if (KeySelect_cm_LeftArrow) then {(findDisplay 46) displayRemoveEventHandler ["KeyDown", cmPress_LeftArrow];};
					if (KeySelect_cm_RightArrow) then {(findDisplay 46) displayRemoveEventHandler ["KeyDown", cmPress_RightArrow];};
					
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

