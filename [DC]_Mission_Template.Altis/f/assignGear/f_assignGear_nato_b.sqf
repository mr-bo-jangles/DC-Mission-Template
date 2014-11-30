// DEFINE BACKPACK CONTENTS
// The following blocks of code define different backpack loadouts. These are then
// called from the role loadouts.

// BACKPACK: LEADER (COMPANY COMMANDER/EXECUTIVE OFFICER/COMPANY SERGEANT/SQUAD LEADER/FIRE TEAM LEADER)
case "ldr":
{
	// LOADOUT: LIGHT
	if (f_param_backpacks == 0) then {
		_unit addBackpack _radiopack;
		clearMagazineCargoGlobal (unitBackpack _unit);		
		(unitBackpack _unit) addMagazineCargoGlobal [_glriflemag, 0];
		(unitBackpack _unit) addMagazineCargoGlobal [_glmag, 0];
		(unitBackpack _unit) addMagazineCargoGlobal [_glsmokewhite, 0];
		(unitBackpack _unit) addMagazineCargoGlobal [_glsmokered, 0];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 1];			//No more room in default inventory, grenades moved to backpack.
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 1];		//No more room in default inventory, grenades moved to backpack.
	};
	// LOADOUT: MEDIUM
	if (f_param_backpacks == 1) then {
		_unit addBackpack _radiopack;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_glriflemag, 3];
		(unitBackpack _unit) addMagazineCargoGlobal [_glmag, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_glsmokewhite, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_glsmokered, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];
	};
	// LOADOUT: HEAVY
	if (f_param_backpacks == 2) then {
		_unit addBackpack _radiopack;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_glriflemag, 6];
		(unitBackpack _unit) addMagazineCargoGlobal [_glmag, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_glsmokewhite, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_glsmokered, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 3];			//No more room in default inventory, grenades moved to backpack.
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 3];		//No more room in default inventory, grenades moved to backpack.
	};
};

// BACKPACK: RADIO (RTO/FO/JTAC)
case "radio":
{
	// LOADOUT: LIGHT
	if (f_param_backpacks == 0) then {
		_unit addBackpack _radiopack;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_riflemag, 0];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 0];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 0];
	};
	// LOADOUT: MEDIUM
	if (f_param_backpacks == 1) then {
		_unit addBackpack _radiopack;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_riflemag, 3];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 1];
	};
	// LOADOUT: HEAVY
	if (f_param_backpacks == 2) then {
		_unit addBackpack _radiopack;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_riflemag, 6];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];
	};
};

// BACKPACK: MEDIC
case "pm":
{
	// LOADOUT: MEDIUM
	if (f_param_backpacks <= 1) then {
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addItemCargoGlobal [_medkit,1];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];
		(unitBackpack _unit) addItemCargoGlobal [_firstaid, 10];
		(unitBackpack _unit) addItemCargoGlobal [_bandage,10];	
		(unitBackpack _unit) addItemCargoGlobal [_packingbandage,10];
		(unitBackpack _unit) addItemCargoGlobal [_tourniquet,10];
		(unitBackpack _unit) addItemCargoGlobal [_morphine,10];
		(unitBackpack _unit) addItemCargoGlobal [_epinephrine,10];
		(unitBackpack _unit) addItemCargoGlobal [_plasma,1];
		(unitBackpack _unit) addItemCargoGlobal [_plasma500,2];
		(unitBackpack _unit) addItemCargoGlobal [_plasma250,4];
		(unitBackpack _unit) addItemCargoGlobal [_blood,1];
		(unitBackpack _unit) addItemCargoGlobal [_blood500,2];
		(unitBackpack _unit) addItemCargoGlobal [_blood250,4];	
		(unitBackpack _unit) addItemCargoGlobal [_saline,1];
		(unitBackpack _unit) addItemCargoGlobal [_saline500,2];
		(unitBackpack _unit) addItemCargoGlobal [_saline250,4];
		(unitBackpack _unit) addItemCargoGlobal [_quikclot,10];
		(unitBackpack _unit) addItemCargoGlobal [_elasticbandage,10];
		(unitBackpack _unit) addItemCargoGlobal [_pak,10];
	};
	// LOADOUT: HEAVY
	if (f_param_backpacks == 2) then {
		_unit addBackpack _baglarge;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addItemCargoGlobal [_medkit,1];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 4];
		(unitBackpack _unit) addItemCargoGlobal [_firstaid, 10];
		(unitBackpack _unit) addItemCargoGlobal [_firstaid, 10];
		(unitBackpack _unit) addItemCargoGlobal [_bandage,10];	
		(unitBackpack _unit) addItemCargoGlobal [_packingbandage,10];
		(unitBackpack _unit) addItemCargoGlobal [_tourniquet,10];
		(unitBackpack _unit) addItemCargoGlobal [_morphine,10];
		(unitBackpack _unit) addItemCargoGlobal [_epinephrine,10];
		(unitBackpack _unit) addItemCargoGlobal [_plasma,1];
		(unitBackpack _unit) addItemCargoGlobal [_plasma500,2];
		(unitBackpack _unit) addItemCargoGlobal [_plasma250,4];
		(unitBackpack _unit) addItemCargoGlobal [_blood,1];
		(unitBackpack _unit) addItemCargoGlobal [_blood500,2];
		(unitBackpack _unit) addItemCargoGlobal [_blood250,4];	
		(unitBackpack _unit) addItemCargoGlobal [_saline,1];
		(unitBackpack _unit) addItemCargoGlobal [_saline500,2];
		(unitBackpack _unit) addItemCargoGlobal [_saline250,4];
		(unitBackpack _unit) addItemCargoGlobal [_quikclot,10];
		(unitBackpack _unit) addItemCargoGlobal [_elasticbandage,10];
		(unitBackpack _unit) addItemCargoGlobal [_pak,10];		
	};
};

// BACKPACK: AR
case "ar":
{
	// LOADOUT: LIGHT
	if (f_param_backpacks == 0) then {
		_unit addBackpack _bagsmall;
		clearMagazineCargoGlobal (unitBackpack _unit);		
		(unitBackpack _unit) addMagazineCargoGlobal [_ARmag, 0];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 0];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 0];
	};
	// LOADOUT: MEDIUM
	if (f_param_backpacks == 1) then {
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_ARmag, 3];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 1];
	};
	// LOADOUT: HEAVY
	if (f_param_backpacks == 2) then {
		_unit addBackpack _baglarge;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_ARmag, 6];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];
	};
};

// BACKPACK: GRENADIER
case "gr":
{
	// LOADOUT: LIGHT
	if (f_param_backpacks == 0) then {
		_unit addBackpack _bagsmall;
		_unit addmagazines [_glriflemag, 0];
		_unit addmagazines [_glmag, 0];
		_unit addmagazines [_glsmokewhite, 0];
		_unit addmagazines [_glsmokered, 0];
		_unit addmagazines [_grenade, 2];									//No more room in default inventory, grenades moved to backpack.
		_unit addmagazines [_smokegrenade, 0];
	};
	// LOADOUT: MEDIUM
	if (f_param_backpacks == 1) then {
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_glriflemag, 3];
		(unitBackpack _unit) addMagazineCargoGlobal [_glmag, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_glsmokewhite, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_glsmokewred, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 3];			//No more room in default inventory, grenades moved to backpack.
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];
	};
	// LOADOUT: HEAVY
	if (f_param_backpacks == 2) then {
		_unit addBackpack _baglarge;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_glriflemag, 6];
		(unitBackpack _unit) addMagazineCargoGlobal [_glmag, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_glsmokewhite, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_glsmokewred, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 4];			//No more room in default inventory, grenades moved to backpack.
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];
	};
};

// BACKPACK: RIFLEMAN AT (RAT)
case "rat":
{
	// LOADOUT: LIGHT
	if (f_param_backpacks == 0) then {
		_unit addBackpack _bagsmall;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_RATmag, 1];
	};
	// LOADOUT: MEDIUM
	if (f_param_backpacks == 1) then {
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_riflemag, 3];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_RATmag, 1];
	};
	// LOADOUT: HEAVY
	if (f_param_backpacks == 2) then {
		_unit addBackpack _baglarge;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_riflemag, 6];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_RATmag, 1];
	};
};

// BACKPACK: RIFLEMAN (R)
case "rm":
{
	// LOADOUT: LIGHT
	if (f_param_backpacks == 0) then {
		_unit addBackpack _bagsmall;
		clearMagazineCargoGlobal (unitBackpack _unit);
		_unit addmagazines [_riflemag,0];
		_unit addmagazines [_grenade,0];
		_unit addmagazines [_smokegrenade,0];
	};
	// LOADOUT: MEDIUM
	if (f_param_backpacks == 1) then {
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_riflemag, 3];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 1];
	};
	// LOADOUT: HEAVY
	if (f_param_backpacks == 2) then {
		_unit addBackpack _baglarge;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_riflemag, 6];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];
	};
};

// BACKPACK: MACHINE GUNNER (MEDIUM)
case "mg":
{
	// LOADOUT: LIGHT
	if (f_param_backpacks == 0) then {
		_unit addBackpack _bagsmall;
		clearMagazineCargoGlobal (unitBackpack _unit);	
		_unit addmagazines [_MMGmag,0];
		_unit addmagazines [_grenade,0];
		_unit addmagazines [_smokegrenade,0];
	};
	// LOADOUT: MEDIUM
	if (f_param_backpacks == 1) then {
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_MMGmag, 3];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 1];
	};
	// LOADOUT: HEAVY
	if (f_param_backpacks == 2) then {
		_unit addBackpack _baglarge;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_MMGmag, 6];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];
	};
};

// BACKPACK: ASSISTANT GUNNER (MEDIUM)
case "ag":
{
	// LOADOUT: LIGHT
	if (f_param_backpacks == 0) then {
		_unit addBackpack _bagsmall;
		clearMagazineCargoGlobal (unitBackpack _unit);
		_unit addmagazines [_MMGmag,0];
		_unit addmagazines [_grenade,0];
		_unit addmagazines [_smokegrenade,0];
	};
	// LOADOUT: MEDIUM
	if (f_param_backpacks == 1) then {
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_riflemag, 3];
		(unitBackpack _unit) addMagazineCargoGlobal [_MMGmag, 3];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 1];
	};
	// LOADOUT: HEAVY
	if (f_param_backpacks == 2) then {
		_unit addBackpack _baglarge;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_riflemag, 6];
		(unitBackpack _unit) addMagazineCargoGlobal [_MMGmag, 6];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];
	};
};

// BACKPACK: ANTITANK SPECIALIST
case "at":
{
	// LOADOUT: LIGHT
	if (f_param_backpacks == 0) then {
		_unit addBackpack _bagsmall;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_MATmag1, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_riflemag, 0];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 0];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 0];
	};
	// LOADOUT: MEDIUM
	if (f_param_backpacks == 1) then {
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_MATmag1, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_riflemag, 3];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 1];
	};
	// LOADOUT: HEAVY
	if (f_param_backpacks == 2) then {
		_unit addBackpack _baglarge;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_MATmag1, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_riflemag, 6];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];
	};
};

// BACKPACK: AMMO HANDLER
case "ah":
{
	// LOADOUT: LIGHT
	if (f_param_backpacks == 0) then {
		_unit addBackpack _bagsmall;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_MATmag1, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_riflemag, 0];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 0];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 0];
	};
	// LOADOUT: MEDIUM
	if (f_param_backpacks == 1) then {
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_MATmag1, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_riflemag, 3];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 1];
	};
	// LOADOUT: HEAVY
	if (f_param_backpacks == 2) then {
		_unit addBackpack _baglarge;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_MATmag1, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_riflemag, 6];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];
	};
};

// BACKPACK: ANTI-AIR SPECIALIST
case "aa":
{
	// LOADOUT: LIGHT
	if (f_param_backpacks == 0) then {
		_unit addBackpack _bagsmall;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_SAMmag, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_riflemag, 0];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 0];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 0];
	};
	// LOADOUT: MEDIUM
	if (f_param_backpacks == 1) then {
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_SAMmag, 2];	
		(unitBackpack _unit) addMagazineCargoGlobal [_riflemag, 3];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 1];
	};
	// LOADOUT: HEAVY
	if (f_param_backpacks == 2) then {
		_unit addBackpack _baglarge;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_SAMmag, 4];	
		(unitBackpack _unit) addMagazineCargoGlobal [_riflemag, 6];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];
	};
};

// BACKPACK: AMMO HANDLER (AA)
case "ahaa":
{
	// LOADOUT: LIGHT
	if (f_param_backpacks == 0) then {
		_unit addBackpack _bagsmall;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_SAMmag, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_riflemag, 0];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 0];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 0];
	};
	// LOADOUT: MEDIUM
	if (f_param_backpacks == 1) then {
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_SAMmag, 2];	
		(unitBackpack _unit) addMagazineCargoGlobal [_riflemag, 3];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 1];
	};
	// LOADOUT: HEAVY
	if (f_param_backpacks == 2) then {
		_unit addBackpack _baglarge;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_SAMmag, 4];	
		(unitBackpack _unit) addMagazineCargoGlobal [_riflemag, 6];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];
	};
};

// LOADOUT: MACHINE GUNNER (HEAVY)
case "hmg":
{
	_unit addBackpack _baghmg;
};

// LOADOUT: ASSISTANT GUNNER (HEAVY)
case "hag":
{
	_unit addBackpack _baghag;
};

// LOADOUT: ANTITANK SPECIALIST (DEPLOYABLE)
case "atd":
{
	_unit addBackpack _baghatg;
};

// LOADOUT: AMMO HANDLER (DEPLOYABLE)
case "ahd":
{
	_unit addBackpack _baghatag;
};

// LOADOUT: ANTI-AIR SPECIALIST (DEPLOYABLE)
case "aad":
{
	_unit addBackpack _baghsamg;
};

// LOADOUT: AMMO HANDLER (AA - DEPLOYABLE)
case "ahaad":
{
	_unit addBackpack _baghsamag;
};

// BACKPACK: MORTAR GUNNER (MRTG)
case "mrtg":
{
	_unit addBackpack _bagmtrg;
};

// BACKPACK: MORTAR ASSISTANT GUNNER (MRTAG)
case "mrtag":
{
	_unit addBackpack _bagmtrag;
};

// BACKPACK: CREW CHIEFS & VEHICLE DRIVERS
case "cc":
{
	_unit addBackpack _bagsmall;
	clearMagazineCargoGlobal (unitBackpack _unit);
	(unitBackpack _unit) addItemCargoGlobal ["ToolKit",1];
};

// BACKPACK: SCOUT (SCOUT & SCOUT [FLIR])
case "scout":
{
	// LOADOUT: LIGHT
	if (f_param_backpacks == 0) then {
		_unit addBackpack _bagsmall;
		clearMagazineCargoGlobal (unitBackpack _unit);
		_unit addmagazines [_riflemag,0];
		_unit addmagazines [_grenade,0];
		_unit addmagazines [_smokegrenade,0];
	};
	// LOADOUT: MEDIUM
	if (f_param_backpacks == 1) then {
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_riflemag, 3];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 1];
	};
	// LOADOUT: HEAVY
	if (f_param_backpacks == 2) then {
		_unit addBackpack _baglarge;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_riflemag, 6];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];
	};
};

// BACKPACK: SCOUT (DMR)
case "scoutdmr":
{
	// LOADOUT: LIGHT
	if (f_param_backpacks == 0) then {
		_unit addBackpack _bagsmall;
		clearMagazineCargoGlobal (unitBackpack _unit);
		_unit addmagazines [_SNriflemag,0];
		_unit addmagazines [_grenade,0];
		_unit addmagazines [_smokegrenade,0];
	};
	// LOADOUT: MEDIUM
	if (f_param_backpacks == 1) then {
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_SNriflemag, 3];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 1];
	};
	// LOADOUT: HEAVY
	if (f_param_backpacks == 2) then {
		_unit addBackpack _baglarge;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_SNriflemag, 6];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];
	};
};
// BACKPACK: ENGINEER (DEMO)
case "eng":
{
	// LOADOUT: LIGHT
	if (f_param_backpacks == 0) then {
		_unit addBackpack _bagsmall;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addItemCargoGlobal ["ToolKit",1];
	};
	// LOADOUT: MEDIUM
	if (f_param_backpacks == 1) then {
		_unit addBackpack _baglarge;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addItemCargoGlobal ["ToolKit",1];
		(unitBackpack _unit) addItemCargoGlobal [_satchel,2];
	};
	// LOADOUT: HEAVY
	if (f_param_backpacks == 2) then {
		_unit addBackpack _baglarge;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addItemCargoGlobal ["ToolKit",1];
		(unitBackpack _unit) addItemCargoGlobal [_satchel,4];
	};
};

// BACKPACK: ENGINEER (MINES)
case "engm":
{
	// LOADOUT: LIGHT
	if (f_param_backpacks == 0) then {
		_unit addBackpack _bagsmall;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addItemCargoGlobal ["ToolKit",1];
	};
	// LOADOUT: MEDIUM
	if (f_param_backpacks == 1) then {
		_unit addBackpack _baglarge;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addItemCargoGlobal ["ToolKit",1];
		(unitBackpack _unit) addMagazineCargoGlobal [_ATmine,1];
	};
	// LOADOUT: HEAVY
	if (f_param_backpacks == 2) then {
		_unit addBackpack _baglarge;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addItemCargoGlobal ["ToolKit",1];
		(unitBackpack _unit) addMagazineCargoGlobal [_ATmine,2];
	};
};

// BACKPACK: SUBMACHINEGUNNER (SMG)
case "smg":
{
	// LOADOUT: LIGHT
	if (f_param_backpacks == 0) then {
		_unit addmagazines [_smgmag,2];
		_unit addmagazines [_grenade,1];_unit addmagazines [_mgrenade,1];
		_unit addmagazines [_smokegrenade,2];
	};
	// LOADOUT: MEDIUM
	if (f_param_backpacks == 1) then {
		_unit addBackpack _bagsmall;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_smgmag, 4];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];
	};
	// LOADOUT: HEAVY
	if (f_param_backpacks == 2) then {
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_smgmag, 8];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 4];
		(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 4];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 4];
	};
};

// BACKPACK: DIVER (DIV)
case "div":
{
	// LOADOUT: MEDIUM
	if (f_param_backpacks == 1) then {
		_unit addBackpack _bagmediumdiver;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_diverMag1, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_diverMag2, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 1];
	};
	// LOADOUT: HEAVY
	if (f_param_backpacks == 2) then {
		_unit addBackpack _bagmediumdiver;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_diverMag1, 4];
		(unitBackpack _unit) addMagazineCargoGlobal [_diverMag2, 4];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];
	};
};

// BACKPACK: CARBINE
case "car":
{
	// LOADOUT: LIGHT
	if (f_param_backpacks == 0) then {
		_unit addmagazines [_carbinemag,2];
		_unit addmagazines [_grenade,1];_unit addmagazines [_mgrenade,1];
		_unit addmagazines [_smokegrenade,2];
	};
	// LOADOUT: MEDIUM
	if (f_param_backpacks == 1) then {
		_unit addBackpack _bagsmall;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag, 4];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];
	};
	// LOADOUT: HEAVY
	if (f_param_backpacks == 2) then {
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag, 8];
		(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag_tr, 4];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 4];
		(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 4];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 4];
	};
};
// BACKPACK: UAV
case "uav":
{
	_unit addBackpack _baguav;
};
