//START EARPLUGS CODE
//////////////////////////////////////////////////////////////////////////
5 fadeSound 1;
earplugsout = true;
removeAllActions inCaseofDeath;
removeAllActions theOneTrueName;
inCaseofDeath setVariable ["HasEarplugMenu","hasNoMenu"];
theOneTrueName setVariable ["HasEarplugMenu","hasNoMenu"];

(findDisplay 46) displayRemoveEventHandler ["KeyDown", cmPress_F5];

//cmEARPLUGS CODE END
//////////////////////////////////////////////////////////////////////////
