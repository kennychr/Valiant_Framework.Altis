/*
 * Author: Pfc.Christiansen
 * per-class arsenal run on preinit, preloads preinit also. Reliant on XEH for the preinit
 *
 * Arguments:
 * NONE
 *
 * Return Value:
 * NONE
 *
 * Example(s):
 * Add to unit in editor: this setVariable ["class", "X", true];
 *
 *
 *
 * With XEH (preinit and preload,users wont have loadtime in arsenal):
 * Add to description.ext:
 *  class Extended_PreInit_EventHandlers {
 *
 *     class AW_VA02 {
 *         clientInit = "[] execVM 'fn_VA02.sqf';";
 *     };
 * };
 * Without XEH:
 * Add to InitPlayerLocal.sqf:
 * [] execVM "fn_VA02.sqf";
 *
 *
 */




//---------:::::Include Standard arrays and specialized stuff
_STANDARD_WEAPONS = [
""
];

_STANDARD_UNIFORMS = [
""
];

_STANDARD_HELMETS = [
""
];
_STANDARD_VESTS = [
""
];
_STANDARD_ITEMS = [
""
];
_STANDARD_AMMO = [
""
];
_GRENADIER_WEAPONS = [
""
];
_MARKSMAN_WEAPONS = [
""
];
_AUTORIFLEMAN_WEAPONS = [
""
];
_MMG_WEAPONS = [
""
];
_AT4 = [
"rhs_weap_M136",
"rhs_weap_M136_hedp",
"rhs_weap_M136_hp"
];
_LAUNCHERS = [
"rhs_weap_fgm148",
"rhs_weap_fim92",
"rhs_weap_smaw_green"

];


_class = player getVariable "class";
switch (_class) do {

    case "leader": {
      [lim_box,_STANDARD_WEAPONS + _GRENADIER_WEAPONS + _AT4,false] call BIS_fnc_addVirtualWeaponCargo;
      [lim_box,_STANDARD_AMMO,false] call BIS_fnc_addVirtualMagazineCargo;
      [lim_box,_STANDARD_ITEMS + _STANDARD_VESTS + _STANDARD_UNIFORMS + _STANDARD_HELMETS,false] call BIS_fnc_addVirtualItemCargo;
      ["Preload"] call BIS_fnc_arsenal;
      //:::::::::General Gear+Rolespecific Radio
      player addItemToUniform "ACRE_PRC343";
      player addItemToUniform "ACE_EarPlugs";
      player addItemToUniform "ACE_IR_Strobe_Item";
      player addItemToUniform "ACE_Flashlight_MX991";
      player addItemToUniform "ACRE_PRC152";
    };
    case "grenadier": {
      [lim_box,_STANDARD_WEAPONS + _GRENADIER_WEAPONS,false] call BIS_fnc_addVirtualWeaponCargo;
      [lim_box,_STANDARD_AMMO,false] call BIS_fnc_addVirtualMagazineCargo;
      [lim_box,_STANDARD_ITEMS + _STANDARD_VESTS + _STANDARD_UNIFORMS + _STANDARD_HELMETS,false] call BIS_fnc_addVirtualItemCargo;
      ["Preload"] call BIS_fnc_arsenal;
      player addItemToUniform "ACRE_PRC343";
      player addItemToUniform "ACE_EarPlugs";
      player addItemToUniform "ACE_IR_Strobe_Item";
      player addItemToUniform "ACE_Flashlight_MX991";
    };
    case "marksman": {
      [lim_box,_STANDARD_WEAPONS + _MARKSMAN_WEAPONS,false] call BIS_fnc_addVirtualWeaponCargo;
      [lim_box,_STANDARD_AMMO,false] call BIS_fnc_addVirtualMagazineCargo;
      [lim_box,_STANDARD_ITEMS + _STANDARD_VESTS + _STANDARD_UNIFORMS + _STANDARD_HELMETS,false] call BIS_fnc_addVirtualItemCargo;
      ["Preload"] call BIS_fnc_arsenal;
      player addItemToUniform "ACRE_PRC343";
      player addItemToUniform "ACE_EarPlugs";
      player addItemToUniform "ACE_IR_Strobe_Item";
      player addItemToUniform "ACE_Flashlight_MX991";
    };
    case "autorifleman": {
      [lim_box,_AUTORIFLEMAN_WEAPONS,false] call BIS_fnc_addVirtualWeaponCargo;
      [lim_box,_STANDARD_AMMO,false] call BIS_fnc_addVirtualMagazineCargo;
      [lim_box,_STANDARD_ITEMS + _STANDARD_VESTS + _STANDARD_UNIFORMS + _STANDARD_HELMETS,false] call BIS_fnc_addVirtualItemCargo;
      ["Preload"] call BIS_fnc_arsenal;
      player addItemToUniform "ACRE_PRC343";
      player addItemToUniform "ACE_EarPlugs";
      player addItemToUniform "ACE_IR_Strobe_Item";
      player addItemToUniform "ACE_Flashlight_MX991";
    };
    case "mmg_gunner": {
      [lim_box,_MMG_WEAPONS,false] call BIS_fnc_addVirtualWeaponCargo;
      [lim_box,_STANDARD_AMMO,false] call BIS_fnc_addVirtualMagazineCargo;
      [lim_box,_STANDARD_ITEMS + _STANDARD_VESTS + _STANDARD_UNIFORMS + _STANDARD_HELMETS,false] call BIS_fnc_addVirtualItemCargo;
      ["Preload"] call BIS_fnc_arsenal;
      player addItemToUniform "ACRE_PRC343";
      player addItemToUniform "ACE_EarPlugs";
      player addItemToUniform "ACE_IR_Strobe_Item";
      player addItemToUniform "ACE_Flashlight_MX991";
    };
    case "pilot": {
      [lim_box,_PILOT_WEAPONS,false] call BIS_fnc_addVirtualWeaponCargo;
      [lim_box,_STANDARD_AMMO,false] call BIS_fnc_addVirtualMagazineCargo;
      [lim_box,_STANDARD_ITEMS + _STANDARD_VESTS + _STANDARD_UNIFORMS + _STANDARD_HELMETS,false] call BIS_fnc_addVirtualItemCargo;
      ["Preload"] call BIS_fnc_arsenal;
      player addItemToUniform "ACRE_PRC343";
      player addItemToUniform "ACE_EarPlugs";
      player addItemToUniform "ACE_IR_Strobe_Item";
      player addItemToUniform "ACE_Flashlight_MX991";
    };
    case "mat_gunner": {
      [lim_box,_PILOT_WEAPONS,false] call BIS_fnc_addVirtualWeaponCargo;
      [lim_box,_STANDARD_AMMO,false] call BIS_fnc_addVirtualMagazineCargo;
      [lim_box,_STANDARD_ITEMS + _STANDARD_VESTS + _STANDARD_UNIFORMS + _STANDARD_HELMETS + _LAUNCHERS,false] call BIS_fnc_addVirtualItemCargo;
      ["Preload"] call BIS_fnc_arsenal;
      player addItemToUniform "ACRE_PRC343";
      player addItemToUniform "ACE_EarPlugs";
      player addItemToUniform "ACE_IR_Strobe_Item";
      player addItemToUniform "ACE_Flashlight_MX991";
    };
    case "rifleman": {
        [lim_box,_STANDARD_WEAPONS + _AT4,false] call BIS_fnc_addVirtualWeaponCargo;
        [lim_box,_STANDARD_AMMO,false] call BIS_fnc_addVirtualMagazineCargo;
        [lim_box,_STANDARD_ITEMS + _STANDARD_VESTS + _STANDARD_UNIFORMS + _STANDARD_HELMETS,false] call BIS_fnc_addVirtualItemCargo;
        ["Preload"] call BIS_fnc_arsenal;
        player addItemToUniform "ACRE_PRC343";
        player addItemToUniform "ACE_EarPlugs";
        player addItemToUniform "ACE_IR_Strobe_Item";
        player addItemToUniform "ACE_Flashlight_MX991";
        };

};
