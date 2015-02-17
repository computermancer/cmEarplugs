//============================================
// cmEarplugs Script
// written by computermancer
// superfunserver.com
// inspired by igiload
//============================================

private ["_object"];

waitUntil { time > 0 };

_object = _this select 0;

_object addaction ["<img image='cmEarplugs\earplugs.paa' /><t color=""#38eeff""> Earplugs</t>","[] call cm_Earplugs_FUNc","",0,false,false,"",""];

_object setVariable ["HasEarplugMenu","hasMenu",true];

publicVariable "HasEarplugMenu";