//START EARPLUGS CODE
//////////////////////////////////////////////////////////////////////////
5 fadeSound 1;
earplugsout = true;
removeAllActions inCaseofDeath;
removeAllActions theOneTrueName;
inCaseofDeath setVariable ["HasEarplugMenu","hasNoMenu"];
theOneTrueName setVariable ["HasEarplugMenu","hasNoMenu"];
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
//cmEARPLUGS CODE END
//////////////////////////////////////////////////////////////////////////
