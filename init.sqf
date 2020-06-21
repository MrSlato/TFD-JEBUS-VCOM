//Saving disabled without autosave.
enableSaving [false,false]; 

//Exec Vcom AI function
[] spawn VCM_fnc_VcomInit;

//Execute the TFAR settings
[] spawn TFD_fnc_tfar;

///========================= DAC/HC Setup - DO NOT CHANGE =========================== ///
if (isNil "paramsArray") then { paramsArray=[0,0,0] };

// Get mission parameter to see if HeadlessClient is present and assign its name
if ("HeadlessClient" call BIS_fnc_getParamValue isEqualTo 1) then {
	
	if (isServer) then {
		HCPresent = true;
		publicVariable "HCPresent";
	};
	
	if (!hasInterface && !isServer) then {
		HCName = name player; 
		publicVariable "HCName";
	};

	} else {
	
	if (isServer) then {
		HCPresent = false;
		HCName = "NOONE";
		publicVariable "HCPresent";
		publicVariable "HCName";
	};
};

// [true,30,false,true,10,3,false,[]] execVM "scripts\WerthlesHeadless.sqf"; --- PROD
[true,30,true,true,10,3,true,[]] execVM "scripts\WerthlesHeadless.sqf"; // --- DEV





