/*
| Author:
|
|	Pfc.Christiansen
|_____
|
| Description: FOB script for FMTV(MHQ)
|	Usage: this addAction ["Deploy FOB", "scripts\misc\fob.sqf",1,0,false];
|	Created: 25-07-2015
|	Last modified: 04-08-2015 Reason : First draft of FMTV FOB Truck
|	Made for AhoyWorld.
| TODO: clean up variables, code structure
*/

//***********Init Variables + defines



MHQ_DEPLOYED = false;
_unit = _this select 0;
_id = _this select 2;
_arg = _this select 3;
_unit removeaction _id;
_radius = 10;

//***********Flatpos
_flatPos = (getPosASL _unit) isFlatEmpty
    [
		_radius,	//--- Minimal distance from another object
		0,				//--- If 0, just check position. If >0, select new one
		0.4,			//--- Max gradient
		_radius max 5,	//--- Gradient area
		0,				//--- 0 for restricted water, 2 for required water,
		false,			//--- Has to have shore nearby!
		objNull			//--- Ignored object
	];

if (_arg == 1) then
{
                    if (count _flatPos isEqualTo 0) exitWith { hint "Area unsuitable for deployment!";_unit addAction ["Deploy FOB", "scripts\misc\fob.sqf",1,0,false]; };
					if ((speed _unit) >= 1) exitWith { hint "Stop the truck to deploy!";_unit addAction ["Deploy FOB", "scripts\misc\fob.sqf",1,0,false]; };
					if (_unit doorPhase "extend_shelter_source" < 0.01) exitWith { hint "Extend Sides before deploying!";_unit addAction ["Deploy FOB", "scripts\misc\fob.sqf",1,0,false]; };

					MHQ_DEPLOYED = true;
					_addAction = _unit addAction ["Pack FOB", "scripts\misc\fob.sqf",0,0,false];
					//***********Disable unit from moving+move out crew
					{moveOut _x} forEach crew _unit;
					//***********Un-Pack Hint for user.
					hint "Unpacking FOB items";
					//***********Objects
					MHQ_Net = "Land_CamoNetB_NATO" createVehicle getPos _unit;
					MHQ_Net attachTo [_unit,[0,0,0]];
					sleep 10;
					MHQ_box = "Box_NATO_AmmoVeh_F" createVehicle getPos _unit;
					MHQ_box allowDamage false;
					MHQ_box attachTo [_unit,[0,-6,-1]];
					sleep 15;
					MHQ_Antenna = "Land_antenna" createVehicle getPos _unit;
					MHQ_Antenna allowDamage false;
					MHQ_Antenna attachTo [_unit,[-4,-10,-1]];
					sleep 30;
					MHQ_Mash = "MASH" createVehicle getPos _unit;
					MHQ_Mash allowDamage false;
					MHQ_Mash attachTo [_unit,[-4,0,-0.6]];

					//***********Add Ammo to box
					clearMagazineCargoGlobal MHQ_box;
					clearItemCargoGlobal MHQ_box;
					clearWeaponCargoGlobal MHQ_box;
					MHQ_box addItemCargoGlobal ["ACE_fieldDressing", 40];
					MHQ_box addItemCargoGlobal ["ACE_packingBandage", 40];
					MHQ_box addItemCargoGlobal ["ACE_elasticBandage", 40];
					MHQ_box addItemCargoGlobal ["ACE_tourniquet", 10];
					MHQ_box addItemCargoGlobal ["ACE_morphine", 40];
					MHQ_box addItemCargoGlobal ["ACE_atropine", 40];
					MHQ_box addItemCargoGlobal ["ACE_epinephrine", 40];
					MHQ_box addItemCargoGlobal ["ACE_quikclot", 40];
					MHQ_box addItemCargoGlobal ["ACE_personalAidKit", 10];
					MHQ_box addItemCargoGlobal ["ACE_surgicalKit", 10];
					MHQ_box addItemCargoGlobal ["ACE_bodyBag", 5];
					MHQ_box addItemCargoGlobal ["ACE_SpareBarrel", 5];
					MHQ_box addItemCargoGlobal ["ACE_Sandbag_empty", 100];
					MHQ_box addItemCargoGlobal ["ACE_EarPlugs", 15];
					MHQ_box addItemCargoGlobal ["ACE_Clacker", 5];
					MHQ_box addItemCargoGlobal ["ACE_M26_Clacker", 5];
					MHQ_box addItemCargoGlobal ["ACE_plasmaIV_250", 10];
					MHQ_box addItemCargoGlobal ["ACE_bloodIV_250", 10];
					MHQ_box addItemCargoGlobal ["ACE_salineIV_250", 10];
					MHQ_box addItemCargoGlobal ["DemoCharge_Remote_Mag", 2];
					MHQ_box addWeaponCargoGlobal ["Binocular", 2];
					MHQ_box addMagazineCargoGlobal ["rhsusf_100Rnd_762x51", 20];
					MHQ_box addMagazineCargoGlobal ["rhsusf_100Rnd_556x45_soft_pouch", 20];
					MHQ_box addMagazineCargoGlobal ["rhsusf_20Rnd_762x51_m118_special_Mag", 15];
					MHQ_box addWeaponCargoGlobal ["rhs_weap_m16a4_carryhandle_pmag", 5];
					MHQ_box addWeaponCargoGlobal ["rhs_weap_m4_carryhandle_pmag", 5];
					MHQ_box addWeaponCargoGlobal ["rhs_weap_m4a1_grip", 5];
					MHQ_box addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_Mk318_Stanag", 40];
					MHQ_box addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_Mk262_Stanag", 40];
					MHQ_box addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 40];
					//***********Fin Hint for user+Grid broadcast(Use EH to broadcast hint)
					hint "Unpacking Finished, broadcasting location shortly";
					_gridPos = mapGridPosition getPos _unit;
					_fobHintText = format [
																"<t align='center' size='2.2'>FOB Deployed at </t><br/><t size='1.5' align='center' color='#FFCF11'>%1</t><br/>____________________<br/><br/><br/>",_gridPos
															 ];
					GlobalHint = _fobHintText; publicVariable "GlobalHint"; hint parseText GlobalHint;
					//***********Variables(Boost radio range,add to medical,ammo to box )
					_unit setVariable ["tf_range", 50000, true];
					MHQ_Mash setvariable ["isMedicalFacility",true,true];


};


if (_arg == 0) then
{
	//***********Undo Variables
					_unit setVariable ["tf_range", 10000, true];
					MHQ_Mash setvariable ["isMedicalFacility",false,false];
	//***********Cleanup+pack hints
					hint "Packing up FOB";
					deleteVehicle MHQ_Mash;
					sleep 30;
					deleteVehicle MHQ_Antenna;
					sleep 15;
					deleteVehicle MHQ_box;
					sleep 10;
					deleteVehicle MHQ_Net;
					hint "Packing finished";
	//***********Make Vehicle movable again
					[_unit, 1] call KC_fnc_setFuel;
					_addAction = _unit addAction ["Deploy FOB", "scripts\misc\fob.sqf",1,0,false];

};
