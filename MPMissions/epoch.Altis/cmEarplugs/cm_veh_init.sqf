//============================================
// cmEarplugs Script
// written by computermancer
// superfunserver.com
// inspired by igiload
//============================================

waituntil {!isnil "bis_fnc_init"};
waitUntil { time > 0 };
sleep 20;

cm_allowedArray = [
	"B_MRAP_01_EPOCH",
	"O_MRAP_02_F",
	"O_MRAP_02_hmg_F",
	"B_G_Offroad_01_F",
	"B_G_Offroad_01_armed_F",
	"C_Offroad_01_EPOCH",
	"C_Hatchback_01_EPOCH",
	"C_Hatchback_02_EPOCH",
	"C_SUV_01_EPOCH",
	"O_G_Van_01_fuel_EPOCH",
	"C_Van_01_box_EPOCH",
	"C_Van_01_transport_EPOCH",
	"B_G_Van_01_fuel_F",
	"B_Truck_01_transport_EPOCH",
	"B_Truck_01_covered_EPOCH",
	"B_Truck_01_mover_EPOCH",
	"B_Truck_01_box_EPOCH",
	"O_Truck_02_covered_EPOCH",
	"O_Truck_02_transport_EPOCH",
	"O_Truck_02_medical_F",
	"O_Truck_02_fuel_EPOCH",
	"O_Truck_03_covered_EPOCH",
	"O_Truck_02_box_EPOCH",
	"B_Truck_01_Repair_F",
	"B_Truck_01_mover_F",
	"B_Truck_01_ammo_F",
	"B_Truck_01_fuel_F",
	"B_Truck_01_medical_F",
	"B_Heli_Light_01_EPOCH",
	"I_Heli_light_03_unarmed_EPOCH",
	"O_Heli_Light_02_unarmed_EPOCH",
	"I_Heli_Transport_02_EPOCH",
	"O_Heli_Transport_04_EPOCH",
	"O_Heli_Transport_04_bench_EPOCH",
	"O_Heli_Transport_04_box_EPOCH",
	"O_Heli_Transport_04_covered_EPOCH",
	"B_Heli_Transport_03_unarmed_EPOCH",
	"B_Heli_Transport_01_EPOCH",
	"B_Heli_Transport_01_camo_EPOCH",
	"B_Heli_Transport_03_F",  
	"B_SDV_01_EPOCH",
	"C_Rubberboat_EPOCH",
	"C_Rubberboat_02_EPOCH",
	"C_Rubberboat_03_EPOCH",
	"C_Rubberboat_04_EPOCH",
	"jetski_epoch",
	"C_Boat_Civil_01_EPOCH",
	"C_Boat_Civil_01_police_EPOCH",
	"C_Boat_Civil_01_rescue_EPOCH",
	"O_G_Boat_Transport_01_F",
	"K01",
	"K02",
	"K03",
	"K04",
	"C_Quadbike_01_EPOCH",
	"ebike_epoch",
	"mosquito_epoch"];


{
if ((typeOf _x) in (cm_allowedArray)) then
	{
		if (isNil {_x getVariable "HasEarplugMenu"}) then {_x setVariable["HasEarplugMenu", "hasNoMenu", true];publicVariable "HasEarplugMenu";};

		_null = [_x] execVM "cmEarplugs\cm_veh.sqf";
		waitUntil {scriptDone _null};

	};
} forEach (vehicles);
