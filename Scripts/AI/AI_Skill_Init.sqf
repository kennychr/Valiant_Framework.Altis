/*
 * Author: [Name of Author(s)]
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

_skill_settings = call (compile preprocessFileLineNumbers "Config\enemy_skill_level.hpp");
AW_skill = _skill_settings;
AW_set_skill = compile preprocessFileLineNumbers "Functions\AI\fn_setSkill.sqf";


[] spawn {
  waitUntil {(time > 1) && (!isNil "AW_Skill")};
  _allUnits = allUnits;
  _newUnits = [];
  {[_x] call AW_set_skill} forEach _allUnits;
  while {true} do {
      sleep 120;
      _newUnits = allUnits - _allUnits;
      { if (count _newUnits > 0) then {[_x] call AW_set_skill} } forEach _newUnits;
      _allUnits = _allUnits + _newUnits;
  };


};
