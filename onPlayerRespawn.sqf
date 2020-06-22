//Setup Group Identity
_handle = [] spawn TFD_fnc_assignGroup; 
waitUntil {scriptDone _handle};

//Close the spectator if the player respawned during the mission
["Terminate"] call BIS_fnc_EGSpectator;

