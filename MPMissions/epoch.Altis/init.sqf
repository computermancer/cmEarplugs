
//================cmEarplugs============================
if (hasInterface) then {
		
		waitUntil {!isNull player};
		waituntil {!isnull (finddisplay 46)};			
		[] execVM "cmEarplugs\cm_veh_init.sqf";

 };
 
 if (isDedicated) then {
 
		[] execVM "cmEarplugs\cm_veh_init.sqf";

 };
 //==================cmEarplugs==========================
