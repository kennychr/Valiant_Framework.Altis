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


 params ["_box"];

if (ACRE) then {
  _box additemcargoGlobal ["ACRE_PRC343",40];
  _box additemcargoGlobal ["ACRE_PRC152",40];
  _box additemcargoGlobal ["ACRE_PRC117f",40];
  _box additemcargoGlobal ["ACRE_PRC148",40];
  _box additemcargoGlobal ["ACRE_PRC77",40];
};
if (TFAR) then {
  _box additemcargoGlobal ["",40];
  _box additemcargoGlobal ["",40];
  _box additemcargoGlobal ["",40];
  _box additemcargoGlobal ["",40];
  _box additemcargoGlobal ["",40];
};
