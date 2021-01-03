/*Put scripts here that you want to be executed on players each time they spawn
e.g. Loadout scripts, script to assign/remove radios, etc

This is to ensure that scripts run correctly both at mission start and when players respawn (if enabled)
*/

// Place player's weapon on back
player action ["SWITCHWEAPON",player,player,-1];

// assign radio channel to channel from orbat
[] spawn TFD_fnc_assignChannels;
