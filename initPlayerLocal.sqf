/* VON Configuration
Example: 0 enableChannel [true, false]; 
Enable user ability to send text but disable voice on global channel
*/

0 enableChannel [true, false]; //Global
1 enableChannel [true, false]; //Side
2 enableChannel [false, false]; //Command
3 enableChannel [true, false]; //Group
4 enableChannel [false, false]; //Vehicle
5 enableChannel [false, false]; //Direct
6 enableChannel [false, false]; //System

/* Used to set up insignias and radio channels

Format:
["SquadName", _channelNum, s_1, s_2, s_3, ...]
Where s_1, s_2, etc are the units in that squad

The last group array should NOT have a comma at the end. */

TFD_ORBAT = [
	["Command",		8,	"s_1", "s_2"],
	["Alpha",	 	1,	"s_3", "s_4","s_5","s_6","s_7","s_8"],
	["Bravo",	 	2,	"s_9", "s_10","s_11","s_12","s_13","s_14"],
	["Charlie",	 	3,	"s_15", "s_16","s_17","s_18","s_19","s_20"],
	["Delta",	 	4,	"s_21", "s_22","s_23","s_24","s_25","s_26"]
];

//Setup TFAR radio channels and mission hint
//Params: [_showMissionStartHint, _swDisabled, _setAdditional]
[true, false, false] spawn TFD_fnc_setRadio;

//Disable AI radio calls
enableSentences false;

//View distance settings (can also be configured in ACE settings)
setViewDistance 3000;
setObjectViewDistance 3000;
/*
// Attempt to set Insignia on all Players when they join.
[player, "PATCH_NAME"] call BIS_fnc_setUnitInsignia;
*/

// Remove 'Custom' faceware
removeGoggles player; 