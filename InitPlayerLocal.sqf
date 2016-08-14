/*
 * Author: Pfc.Christiansen
 * InitPlayerLocal.
 * All stuff that should only run on client side goes here!
 *
 * Arguments:
 * NONE
 *
 * Return Value:
 * NONE
 */

enableSaving [false,false];//Disable SP save

// ---------------- Player Scripts
[] execVM "scripts\QS_icons.sqf";//Map Icons
[] call AW_fnc_diary;//Write briefing/changelog etc. into mission
[] execVM "Scripts\Loadouts\Woodland\LEX.sqf";//Loadout exec



// ---------------- Player Scripts
[] execVM "scripts\QS_icons.sqf";//Map Icons
[] call AW_fnc_diary;//Write briefing/changelog etc. into mission
[] execVM 'Functions\VA\fn_VA02.sqf';//Limited Arsenal Per Class
[] execVM 'Scripts\Loadouts\Woodland\LEX.sqf';//Loadout exec
//----------- Add respawn EH
//player addMPEventHandler ["MPRespawn", {[]execFSM "Machines\Player\PlayerRespawn.fsm"}];// Circumvent BIS bug of initPlayerLocal and OnPlayerRespawn firing on mission start


// -------------- Headless Client
[] spawn {
    if (!hasInterface) then {
        if (isNil 'mytag_headlessClient_server_listener' ) then {
            waitUntil {
                sleep 1;
                (!isNil 'mytag_headlessClient_server_listener' )
            };
        };
        mytag_headlessClient_client_active = TRUE;
        publicVariableServer 'mytag_headlessClient_client_active';
      //  [] execFSM 'Machines\AI\AmbientAI.fsm';
    };
};
