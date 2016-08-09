//_fold = [this,1] execVM "Scripts\Misc\CH_53_fold.sqf";

_heli = _this select 0;
_position = _this select 1;

_heli setfuel 1-_position;
_heli animate ["Tailsection",_position];
sleep 10;
_heli animate ["mainrotor_folded",1-_position];
_heli animate ["mainrotor_unfolded",_position];
