[] spawn {

    //CamUseNVG true; // Turns NVG vision on

	_markerName = "intro_marker";
	_introText = "Lorem Ipsum";
	
    [getMarkerPos _markerName, _introText, 80, 80, 230, 20] spawn BIS_fnc_establishingShot; // Your establishing shot where you define the location of the camera via a named marker - default is the required respawn marker.  The next part of the array covers the text that will be displayed.

    waitUntil {!isNil "BIS_fnc_establishingShot_playing" && {!BIS_fnc_establishingShot_playing}}; // Wait until establishing shot has stopped playing

	//CamUseNVG false; // Turns NVG vision off

    5 fadeSound 1;
    5 fadeMusic 1;
    titleCut ["", "BLACK IN", 5]; // Length of time it takes to become completely visible from black.
    sleep 3;
    ["Main Text Here",1,1,9,1] spawn BIS_fnc_dynamicText; // This is the first line of text and should be used for your mission name
    sleep 5;
    ["By Author Name",1,1,9,1] spawn BIS_fnc_dynamicText; //This is for the author
    sleep 10;
    ["Additional Text"] call BIS_fnc_infoText; //2nd line of text used to identify who you are generally, keep it short to avoid disappearing text
    ["Additional Text"] call BIS_fnc_infoText; //Third line of text, mainly used for location hint, keep it short to avoid disappearing text
	
};