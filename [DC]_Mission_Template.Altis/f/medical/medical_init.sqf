// F3 - Medical Systems Support initialisation
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// RUN RELEVANT SCRIPTS, DEPENDING ON SYSTEM IN USE
// Each medical modification requires a different set of scripts to be used, and so we
// split into a separate script file for initialisation of each mod.

private ["_medix_config"];

// Wait for parameter to be initialised
waitUntil{!isNil "f_var_medical"};

// Check which system to use
call
{
	// If 0 do nothing (Default Arma Healing)

	// F3 Simple Wounding System
	if (f_var_medical == 1) exitWith
	{
		// If script is being run on a client
		if (hasInterface) then
		{
			[player] execVM "f\simplewoundingsystem\init.sqf";
		};
	};
	// Authentic Gameplay Modification
	if (f_var_medical == 2) exitWith
	{
		// If script is being run on a client
		if (hasInterface) then
		{
			[] execVM "f\medical\AGM_clientInit.sqf";
		};
	};
	// Farooq intergration
	if (f_var_medical == 3) exitWith
	{
		// If script is being run on a client
		if (hasInterface) then
		{
			call compileFinal preprocessFileLineNumbers "FAR_revive\FAR_revive_init.sqf";
		};
	};
	// Medix intergration
	if (f_var_medical == 4) exitWith
	{
		// If script is being run on a client
		if (hasInterface) then
		{
			waitUntil{!isNil "f_var_medix_tfar"};
			waitUntil{!isNil "f_var_radios"};
			if (f_var_radios == 2) then
			{
				_medix_config = f_var_medix_tfar;
			} else {
				_medix_config = 0;
			};
			[_medix_config] execVM "medix\init.sqf";
		};
	};
	if (f_var_medical == 5) exitWith
	{
		// If script is being run on a client
		if (hasInterface) then
		{
			waitUntil{!isNil "f_var_medix_tfar"};
			waitUntil{!isNil "f_var_radios"};
			if (f_var_radios == 2) then
			{
				_medix_config = f_var_medix_tfar;
			} else {
				_medix_config = 0;
			};
			[_medix_config] execVM "medix\init.sqf";
		};
	};
};