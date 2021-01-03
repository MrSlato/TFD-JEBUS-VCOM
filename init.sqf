//== ORBAT ============================================================

/* Used to set up insignias and radio channels

Format:
["SquadName", _SRchannelNum, _LRchannelNum, s_1, s_2, s_3, ...]
Where s_1, s_2, etc are the units in that squad

The last group array should NOT have a comma at the end. */

TFD_ORBAT = [
	["Command",		8,	1,	"s_1", "s_2"],
	["Alpha",		1,	1,	"s_3", "s_4","s_5","s_6","s_7","s_8"],
	["Bravo",	 	2,	1,	"s_9", "s_10","s_11","s_12","s_13","s_14"],
	["Charlie",	 	3,	1,	"s_15", "s_16","s_17","s_18","s_19","s_20"],
	["Delta",	 	4,	1,	"s_21", "s_22","s_23","s_24","s_25","s_26"]
];

// Setup ACRE radio channels and mission hint
// Params: [_usingSR, _showMissionStartHint, _useCustomSRlabels]
[true, true, false] spawn TFD_fnc_setRadio;


//Saving disabled without autosave.
enableSaving [false,false]; 

//Exec Vcom AI function
[] spawn VCM_fnc_VcomInit;

// [true,30,false,true,10,3,false,[]] execVM "functions\core\fn_WerthlesHeadless.sqf";  //--- PROD
[true,30,true,true,10,3,true,[]] execVM "functions\core\fn_WerthlesHeadless.sqf"; // --- DEV






