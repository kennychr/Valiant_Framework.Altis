/*
 * Author: Pfc. Christiansen
 * [Description]
 *
 * Arguments:
 * 0: Argument Name <TYPE>
 *
 * Return Value:
 * Return Name <TYPE>
 *
 * Example:
 * ["example"] call ace_[module]_fnc_[functionName]
 *
 * Public: [Yes/No]
 */

while {counter_attack_start} do {
_attack_location = captured_airfields call BIS_fnc_selectRandom;
_dir = random 360;
_spawn_pos = [_attack_location, 1000, _dir] call BIS_fnc_relPos;
_attack_units = [EAST, 4, _attack_location, 200] call AW_fnc_spawnEnemy;
[_attack_units, [["attack", getPos trigger_main_airfield_1, 200]]] call AW_fnc_setBehaviour;
_gridPos = mapGridPosition _attack_location;
["GeneralNotify",[format ["%1 is under attack, defend it now!",_gridPos]]] call BIS_fnc_showNotification;
sleep (500 + (random 500));
};
