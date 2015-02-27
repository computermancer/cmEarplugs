//============================================
// cmEarplugs Script
// written by computermancer
// superfunserver.com
//
//CONFIG : CHOOSE YOUR BEHAVIOR
//============================================

//CHOOSE IF YOU WANT AUTOINSERT & AUTOREMOVE OF EARPLUGS
///////////////////////////////////////////////////////////////////

InsertAutoEarplugs=true;
RemoveAutoEarplugs=true;


//CHOOSE AUTO-INSERT & REMOVE BEHAVIOR
///////////////////////////////////////////////////////////////////

cmMuteSound = {
//FIRST NUMBER : Choose how LONG it takes  until sound is REDUCED
//SECOND NUMBER:" CHoose how LOUD the sound is when it is REDUCED
5 fadeSound 0.25;
};


cmReturnSound = {
//FIRST NUMBER : Choose how LONG it takes  until sound RETURNS
//SECOND NUMBER:" CHoose how LOUD the sound is when it is done RETUNRNING
10 fadeSound 1;
};


cmMuteMessage = {
//CHOOSE YOUR AUTO-INSERT MESSAGE
hint "Earplugs have been auto-inserted...";
};


cmReturnSoundMsg = {
//CHOOSE YOUR AUTO-REMOVE MESSAGE
hint "Earplugs have been auto-removed.";
};

//END CONFIGURABLES
///////////////////////////////////////////////////////////////////





///////////////////////////////////////////////////////////////////
//DO NOT EDIT BELOW THIS LINE UNLESS YOU KNOW WHAT YOU ARE DOING
///////////////////////////////////////////////////////////////////





EP_req_1 = {
	private ["_cm_trigger2"];
	_cm_trigger2 = vehicle player != player;
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


cm_EP_LOOP = {
	_imStillHere = alive player;
	while {_imStillHere} do {
	
		waitUntil {vehicle player != player};
		
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
			
		waitUntil {vehicle player == player}; 

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
			[] call cmReturnSoundMsg;
			earplugsout=true;
		};
	};
};

///////////////////////////////////////////////////////////////////
//END ALL
///////////////////////////////////////////////////////////////////

