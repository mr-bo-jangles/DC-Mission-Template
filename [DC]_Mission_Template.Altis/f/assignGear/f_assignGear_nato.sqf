// F3 - Folk Assign Gear Script - NATO
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// DEFINE EQUIPMENT TABLES
// The blocks of code below identifies equipment for this faction
//
// Defined loadouts:
//		co			- company commander
//		xo 			- executive commander
//		1sg			- company sergeant
//		pl			- platoon leader
//		psg			- platoon sergeant
//		rto			- radio telephone operator
//		fojtac		- forward observer/JTAC
//		pm			- platoon medic
//		sl			- squad leader
//		ftl			- fire team leader
//		ar 			- automatic rifleman
//		gr			- grenadier
//		rat			- rifleman (AT)
//		rm			- rifleman
//		mg			- machine gunner (medium)
//		ag			- assistant gunner (medium)
//		at			- antitank specialist
//		ah			- ammo handler
//		aa			- anti-air specialist
//		ahaa		- ammo handler (AA)
//		hmg			- machine gunner (heavy)
//		hag			- assistant gunner (heavy)
//		atd			- antitank specialist (deployable)
//		ahd			- ammo handler (deployable)
//		aad			- anti-air specialist (deployable)
//		ahaad		- ammo handler (AA - deployable)
//		mrtg		- mortar gunner
//		mrtag		- mortar assistant gunner
//		vc			- vehicle commander
//		vg			- vehicle gunner
//		vd			- vehicle driver
//		fwp			- fixed-wing pilot
//		rwp			- rotary-wing pilot
//		rwcc		- rotary-wing crew chief
//		rwc			- rotary-wing crew
//		v_car		- car/4x4
//		v_tr		- truck
//		v_ifv		- ifv
//		crate_small	- small ammocrate
//		crate_med	- medium ammocrate
//		crate_large	- large ammocrate
//
//		all presets below this line are non-organic and incorrectly classified
//
//		sn			- sniper
//		sp			- spotter (for sniper)
//		eng			- engineer (demo)
//		engm		- engineer (mines)
//		uav			- UAV operator
//		div    		- divers
//		car			- carbine
//		smg			- submachinegunner
//
// ====================================================================================

// GENERAL EQUIPMENT USED BY MULTIPLE CLASSES

// ATTACHMENTS - PRIMARY
_attach1 = "rhsusf_acc_anpeq15";		// IR Laser
_attach2 = "acc_flashlight";			// Flashlight

_silencer1 = "";						// 5.56 suppressor
_silencer2 = "";						// 6.5 suppressor

_scope1 = "rhsusf_acc_EOTECH";			// Holosight
_scope2 = "rhsusf_acc_ACOG3";			// RCO Scope - 1x - 10x
_scope3 = "rhsusf_acc_ELCAN";			// RCO Scope - 1x - 10x
_scope4 = "optic_tws";					// FLIR Scope - 1x - 10x
_scope5 = "rhsusf_acc_LEUPOLDMK4_2";	// SOS Scope - 18x - 75x

// Default setup
_attachments = [_attach1,_scope2]; // The default attachment set for most units, overwritten in the individual unitType

// [] = remove all
// [_attach1,_scope1,_silencer] = remove all, add items assigned in _attach1, _scope1 and _silencer1
// [_scope2] = add _scope2, remove rest
// false = keep attachments as they are

// ====================================================================================

// ATTACHMENTS - HANDGUN
_hg_silencer1 = "muzzle_snds_acp";	// .45 suppressor

_hg_scope1 = "optic_MRD";			// MRD

// Default setup
_hg_attachments= []; // The default attachment set for handguns, overwritten in the individual unitType

// ====================================================================================

// WEAPON SELECTION

// Standard Rifleman
_rifle = "rhs_weap_m4a1_grip";
_riflemag = "rhs_mag_30Rnd_556x45_M855A1_Stanag";
_riflemag_tr = "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";

// Standard Carbine
_carbine = "rhs_weap_m4a1_grip";
_carbinemag = "rhs_mag_30Rnd_556x45_M855A1_Stanag";
_carbinemag_tr = "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";

// Standard Personal Defence Weapon
_smg = "rhs_weap_m4";
_smgmag = "rhs_mag_30Rnd_556x45_M855A1_Stanag";
_smgmag_tr = "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";

// Diver
_diverWep = "arifle_SDAR_F";
_diverMag1 = "30Rnd_556x45_Stanag";
_diverMag2 = "20Rnd_556x45_UW_mag";

// Rifle with GL and HE grenades
_glrifle = "rhs_m4a1_m320";
_glriflemag = "rhs_mag_30Rnd_556x45_M855A1_Stanag";
_glriflemag_tr = "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";
_glmag = "rhs_mag_M433_HEDP";

// Smoke for FTLs, Squad Leaders, etc
_glsmokewhite = "rhs_mag_M714_white";
_glsmokegreen = "rhs_mag_M715_green";
_glsmokered = "rhs_mag_M713_red";

// Flares for FTLs, Squad Leaders, etc
_glflarewhite = "rhs_mag_M585_white";
_glflarered = "rhs_mag_M662_red";
_glflareyellow = "";
_glflaregreen = "rhs_mag_M661_green";

// Pistols
_pistol = "hgun_Pistol_heavy_01_F";
_pistolmag = "11Rnd_45ACP_Mag";

// Grenades
_grenade = "HandGrenade";
_Mgrenade = "MiniGrenade";
_smokegrenade = "SmokeShell";
_smokegrenadegreen = "SmokeShellGreen";

// misc medical items.
_firstaid = "FirstAidKit";
_bandage = "cse_bandage_basic";
_packingbandage = "cse_packing_bandage";
_tourniquet = "cse_tourniquet";
_morphine = "cse_morphine";
_epinephrine = "cse_epinephrine";
_plasma = "cse_plasma_iv";
_plasma500 = "cse_plasma_iv_500";
_plasma250 = "cse_plasma_iv_250";
_blood = "cse_blood_iv";
_blood500 = "cse_blood_iv_500";
_blood250 = "cse_blood_iv_250";
_saline = "cse_saline_iv";
_saline500 = "cse_saline_iv_500";
_saline250 = "cse_saline_iv_250";
_quikclot = "cse_quikclot";
_elasticbandage = "cse_bandageElastic";
_pak = "cse_personal_aid_kit";

// Night Vision Goggles (NVGoggles)
_nvg = "NVGoggles";

// UAV Terminal
_uavterminal = "B_UavTerminal";	  // BLUFOR - FIA

// Chemlights
_chemgreen =  "Chemlight_green";
_chemred = "Chemlight_red";
_chemyellow =  "Chemlight_yellow";
_chemblue = "Chemlight_blue";

// Backpacks
_radiopack = "tf_rt1523g";						// radiopack used by leaders, RTOs, or JTACs.
_bagsmall = "rhsusf_assault_eagleaiii_ocp";		// carries 120, weighs 20
_bagmedium = "rhsusf_assault_eagleaiii_ocp";	// carries 240, weighs 30
_baglarge = "rhsusf_assault_eagleaiii_ocp"; 	// carries 320, weighs 40
_bagmediumdiver = "B_AssaultPack_blk";			// used by divers
_baguav = "B_UAV_01_backpack_F";				// used by UAV operator
_baghmg = "B_HMG_01_weapon_F";					// used by Machine Gunner (Heavy)
_baghag = "B_HMG_01_support_F";					// used by Assistant Gunner (Heavy)
_bagatd = "B_AT_01_weapon_F";					// used by Antitank Specialist (Deployable)
_bagahd = "B_HMG_01_support_F";					// used by Ammo Handler (Deployable)
_bagaad = "B_AA_01_weapon_F";					// used by Anti-air Specialist (Deployable)
_bagahaad = "B_HMG_01_support_F";				// used by Ammo Handler (AA - Deployable)
_bagmrtg = "B_Mortar_01_weapon_F";				// used by Mortar Gunner
_bagmrtag = "B_Mortar_01_support_F";			// used by Mortar Assistant Gunner

// ====================================================================================

// UNIQUE, ROLE-SPECIFIC EQUIPMENT

// Automatic Rifleman
_AR = "rhs_weap_m249_pip";
_ARmag = "rhsusf_100Rnd_556x45_soft_pouch";
_ARmag_tr = "rhsusf_100Rnd_556x45_soft_pouch";

// Medium Machine Gunner
_MMG = "rhs_weap_m240B";
_MMGmag = "rhsusf_100Rnd_762x51";
_MMGmag_tr = "rhsusf_100Rnd_762x51";

// Rifleman (AT)
_RAT = "rhs_weap_M136";
_RATmag = "rhs_m136_mag";

// Antitank Specialist
_MAT = "rhs_weap_fgm148";
_MATmag1 = "rhs_fgm148_magazine_AT";
_MATmag2 = "rhs_fgm148_magazine_AT";

// Anti-air Specialist
_SAM = "rhs_weap_fim92";
_SAMmag = "rhs_fim92_mag";

// Sniper
_SNrifle = "rhs_weap_m14ebrri";
_SNrifleMag = "20Rnd_762x51_Mag";

// Engineer items
_ATmine = "ATMine_Range_Mag";
_satchel = "DemoCharge_Remote_Mag";
_APmine1 = "APERSBoundingMine_Range_Mag";
_APmine2 = "APERSMine_Range_Mag";

// ====================================================================================

// CLOTHES AND UNIFORMS

// Define classes. This defines which gear class gets which uniform
// "medium" vests are used for all classes if they are not assigned a specific uniform

_light = [];
_heavy =  ["eng","engm"];
_diver = ["div"];
_pilot = ["fwp","rwp"];
_crew = ["vc","vg","vd"];
_ghillie = ["sn","sp"];
_specOp = [];

// Basic clothing
// The outfit-piece is randomly selected from the array for each unit
_baseUniform = ["rhs_uniform_cu_ocp"];
_baseHelmet = ["rhsusf_ach_bare_tan_headset","rhsusf_ach_bare_tan_headset_ess","rhsusf_ach_helmet_headset_ocp","rhsusf_ach_helmet_headset_ess_ocp"];
_baseGlasses = [];

// Armored vests
_lightRig = [""];
_mediumRig = ["rhsusf_iotv_ocp","rhsusf_iotv_ocp_grenadier", "rhsusf_iotv_ocp_medic", "rhsusf_iotv_ocp_repair", "rhsusf_iotv_ocp_rifleman", "rhsusf_iotv_ocp_SAW", "rhsusf_iotv_ocp_squadleader", "rhsusf_iotv_ocp_teamleader"]; 	// default for all infantry classes
_heavyRig = [""];

// Diver
_diverUniform =  ["U_B_Wetsuit"];
_diverHelmet = [];
_diverRig = ["V_RebreatherB"];
_diverGlasses = ["G_Diving"];

// Pilot
_pilotUniform = ["rhs_uniform_cu_ocp"];
_pilotHelmet = ["H_PilotHelmetHeli_B"];
_pilotRig = ["rhsusf_iotv_ocp"];
_pilotGlasses = [];

// Crewman
_crewUniform = ["rhs_uniform_cu_ocp"];
_crewHelmet = ["rhsusf_cvc_helmet","rhsusf_cvc_ess"];
_crewRig = ["rhsusf_iotv_ocp"];
_crewGlasses = [];

// Ghillie
_ghillieUniform = ["U_B_GhillieSuit"];
_ghillieHelmet = [];
_ghillieRig = ["V_Chestrig_rgr"];
_ghillieGlasses = [];

// SOF
_sfuniform = ["rhs_uniform_cu_ocp"];
_sfhelmet = ["rhsusf_opscore_02_tan","rhsusf_opscore_01_tan","rhsusf_opscore_04_ocp","rhsusf_opscore_03_ocp"];
_sfRig = _mediumRig;
_sfGlasses = [];

// ====================================================================================

// INTERPRET PASSED VARIABLES
// The following inrerprets formats what has been passed to this script element

_typeofUnit = toLower (_this select 0);			// Tidy input for SWITCH/CASE statements, expecting something like : r = Rifleman, co = Commanding Officer, rat = Rifleman (AT)
_unit = _this select 1;							// expecting name of unit; originally passed by using 'this' in unit init
_isMan = _unit isKindOf "CAManBase";			// We check if we're dealing with a soldier or a vehicle

// ====================================================================================

// This block needs only to be run on an infantry unit
if (_isMan) then {

	// PREPARE UNIT FOR GEAR ADDITION
	// The following code removes all existing weapons, items, magazines and backpacks

	removeBackpack _unit;
	removeAllWeapons _unit;
	removeAllItemsWithMagazines _unit;
	removeAllAssignedItems _unit;

	// ====================================================================================

	// HANDLE CLOTHES
	// Handle clothes and helmets and such using the include file called next.

	#include "f_assignGear_clothes.sqf";

	// ====================================================================================

	// ADD UNIVERSAL ITEMS
	// Add items universal to all units of this faction

	_unit linkItem _nvg;			// Add and equip the faction's nvg
	_unit addItem _bandage;			// Add a single bandage
	_unit addItem _bandage;			// Add a single bandage
	_unit addItem _packingbandage;	// Add a single packing bandage
	_unit addItem _packingbandage;	// Add a single packing bandage
	_unit addItem _tourniquet;		// Add a single tourniquet
	_unit addItem _morphine;		// Add a single morphine pen
	_unit addItem _morphine;		// Add a single morphine pen	
	_unit addItem _epinephrine;		// Add a single epinephrine pen
	_unit addItem _epinephrine;		// Add a single epinephrine pen	
	_unit addItem _pak;				// Add a single personal aid kit
	_unit linkItem "ItemMap";		// Add and equip the map
	_unit linkItem "ItemCompass";	// Add and equip a compass
	_unit linkItem "ItemRadio";		// Add and equip A3's default radio
	_unit linkItem "ItemWatch";		// Add and equip a watch
	//_unit linkItem "ItemGPS"; 	// Add and equip a GPS

};

// ====================================================================================

// SETUP BACKPACKS
// Include the correct backpack file for the faction

_backpack = {
	_typeofBackPack = _this select 0;
	switch (_typeofBackPack) do
	{
		#include "f_assignGear_nato_b.sqf";
	};
};

// ====================================================================================

// DEFINE UNIT TYPE LOADOUTS
// The following blocks of code define loadouts for each type of unit (the unit type
// is passed to the script in the first variable)

switch (_typeofUnit) do
{

// ====================================================================================

// LOADOUT: COMPANY COMMANDER
	case "co":
	{
		removeVest _unit;
		_unit addVest "rhsusf_iotv_ocp_squadleader";
		_unit addweapon _glrifle;
		_unit addweapon _pistol;
		_unit addmagazines [_glriflemag,3];		
		_unit addmagazines [_glriflemag_tr,4];
		_unit addmagazines [_glmag,2];
		_unit addmagazines [_glsmokewhite,2];
		_unit addmagazines [_glsmokered,2];
		_unit addmagazines [_pistolmag,2];
		_unit addmagazines [_grenade,1];				//Not enough for 2x grenades, so 1x grenade moved to backpack.
		_unit addmagazines [_smokegrenade,1];			//Not enough for 2x smoke grenades, so 1x smoke grenade moved to backpack.
		_unit addmagazines [_smokegrenadegreen,2];
		_unit linkItem "Laserdesignator";
		_unit addMagazine "Laserbatteries";
		_unit linkItem "ItemGPS";
		["ldr"] call _backpack;
		_attachments = [_attach1,_scope2];
	};

// LOADOUT: EXECUTIVE OFFICER
	case "xo":
	{
		removeVest _unit;
		_unit addVest "rhsusf_iotv_ocp_squadleader";
		_unit addweapon _glrifle;
		_unit addweapon _pistol;
		_unit addmagazines [_glriflemag,3];
		_unit addmagazines [_glriflemag_tr,4];
		_unit addmagazines [_glmag,2];
		_unit addmagazines [_glsmokewhite,2];
		_unit addmagazines [_glsmokered,2];
		_unit addmagazines [_pistolmag,2];
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_smokegrenadegreen,2];
		_unit linkItem "Laserdesignator";
		_unit addMagazine "Laserbatteries";
		_unit linkItem "ItemGPS";
		["ldr"] call _backpack;
		_attachments = [_attach1,_scope2];
	};
	
// LOADOUT: COMPANY SERGEANT
	case "1sg":
	{
		removeVest _unit;
		_unit addVest "rhsusf_iotv_ocp_squadleader";
		_unit addweapon _glrifle;
		_unit addweapon _pistol;
		_unit addmagazines [_glriflemag,3];
		_unit addmagazines [_glriflemag_tr,4];
		_unit addmagazines [_glmag,2];
		_unit addmagazines [_glsmokewhite,2];
		_unit addmagazines [_glsmokered,2];
		_unit addmagazines [_pistolmag,2];
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_smokegrenadegreen,2];
		_unit linkItem "Laserdesignator";
		_unit addMagazine "Laserbatteries";
		_unit linkItem "ItemGPS";
		["ldr"] call _backpack;
		_attachments = [_attach1,_scope2];
	};

// LOADOUT: PLATOON LEADER
	case "pl":
	{
		removeVest _unit;
		_unit addVest "rhsusf_iotv_ocp_squadleader";
		_unit addweapon _glrifle;
		_unit addweapon _pistol;		
		_unit addmagazines [_glriflemag,3];
		_unit addmagazines [_glriflemag_tr,4];
		_unit addmagazines [_glmag,2];
		_unit addmagazines [_glsmokewhite,2];
		_unit addmagazines [_glsmokered,2];
		_unit addmagazines [_pistolmag,2];
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_smokegrenadegreen,2];
		_unit linkItem "Laserdesignator";
		_unit addMagazine "Laserbatteries";
		_unit linkItem "ItemGPS";
		["ldr"] call _backpack;
		_attachments = [_attach1,_scope2];
	};

// LOADOUT: PLATOON SERGEANT
	case "psg":
	{
		removeVest _unit;
		_unit addVest "rhsusf_iotv_ocp_squadleader";
		_unit addweapon _glrifle;
		_unit addweapon _pistol;
		_unit addmagazines [_glriflemag,3];
		_unit addmagazines [_glriflemag_tr,4];
		_unit addmagazines [_glmag,2];
		_unit addmagazines [_glsmokewhite,2];
		_unit addmagazines [_glsmokered,2];
		_unit addmagazines [_pistolmag,2];
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_smokegrenadegreen,2];
		_unit linkItem "Laserdesignator";
		_unit addMagazine "Laserbatteries";
		_unit linkItem "ItemGPS";
		["ldr"] call _backpack;
		_attachments = [_attach1,_scope2];
	};

// LOADOUT: RADIO TELEPHONE OPERATOR
	case "rto":
	{
		removeVest _unit;
		_unit addVest "rhsusf_iotv_ocp_rifleman";
		_unit addweapon _rifle;
		_unit addmagazines [_riflemag,7];
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_smokegrenadegreen,2];
		["radio"] call _backpack;
	};

// LOADOUT: FORWARD OBSERVER/JTAC
	case "fojtac":
	{
		removeVest _unit;
		_unit addVest "rhsusf_iotv_ocp_rifleman";
		_unit addweapon _rifle;
		_unit addmagazines [_riflemag,7];
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_smokegrenadegreen,2];
		_unit linkItem "Laserdesignator";
		_unit addMagazine "Laserbatteries";		
		["radio"] call _backpack;		
	};
	
// LOADOUT: PLATOON MEDIC
	case "pm":
	{		
		removeVest _unit;
		_unit addVest "rhsusf_iotv_ocp_medic";
		_unit addweapon _rifle;
		_unit addmagazines [_riflemag,7];
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_smokegrenadegreen,2];
		_unit addMagazine "SmokeshellBlue";
		_unit addMagazine "SmokeshellBlue";
		_unit linkItem "ItemGPS";
		["pm"] call _backpack;
	};
	
// LOADOUT: SQUAD LEADER
	case "sl":
	{
		removeVest _unit;
		_unit addVest "rhsusf_iotv_ocp_squadleader";
		_unit addweapon _glrifle;
		_unit addmagazines [_glriflemag,3];
		_unit addmagazines [_glriflemag_tr,4];
		_unit addmagazines [_glmag,2];
		_unit addmagazines [_glsmokewhite,2];
		_unit addmagazines [_glsmokered,2];
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_smokegrenadegreen,2];
		_unit addWeapon "Rangefinder";
		_unit linkItem "ItemGPS";
		["ldr"] call _backpack;
		_attachments = [_attach1,_scope2];
	};
	
// LOADOUT: FIRE TEAM LEADER
	case "ftl":
	{
		removeVest _unit;
		_unit addVest "rhsusf_iotv_ocp_teamleader";
		_unit addweapon _glrifle;
		_unit addmagazines [_glriflemag,3];
		_unit addmagazines [_glriflemag_tr,4];
		_unit addmagazines [_glmag,2];
		_unit addmagazines [_glsmokewhite,2];
		_unit addmagazines [_glsmokered,2];
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_smokegrenadegreen,2];
		_unit linkItem "ItemGPS";
		_unit addWeapon "Rangefinder";		
		["ldr"] call _backpack;
		_attachments = [_attach1,_scope2];
	};

// LOADOUT: AUTOMATIC RIFLEMAN
	case "ar":
	{
		removeVest _unit;
		_unit addVest "rhsusf_iotv_ocp_SAW";
		_unit addweapon _AR;	
		_unit addmagazines [_ARmag,8];
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_smokegrenade,2];
		["ar"] call _backpack;
		_attachments = [_attach1,_scope3];
	};

// LOADOUT: GRENADIER
	case "gr":
	{
		removeVest _unit;
		_unit addVest "rhsusf_iotv_ocp_grenadier";
		_unit addweapon _glrifle;
		_unit addmagazines [_glriflemag,7];
		_unit addmagazines [_glmag,8];
		_unit addmagazines [_glsmokewhite,2];
		_unit addmagazines [_glsmokered,2];
		_unit addmagazines [_grenade,0];				//No more room for grenades, moved to backpack.
		_unit addmagazines [_smokegrenade,2];
		["gr"] call _backpack;
		_attachments = [_attach1,_scope2];
	};

// LOADOUT: RIFLEMAN (AT)
	case "rat":
	{
		removeVest _unit;
		_unit addVest "rhsusf_iotv_ocp_rifleman";
		_unit addweapon _rifle;
		_unit addmagazines [_riflemag,7];
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_smokegrenade,2];
		["rat"] call _backpack;
		_unit addweapon _RAT;
	};

// LOADOUT: RIFLEMAN
	case "rm":
	{
		removeVest _unit;
		_unit addVest "rhsusf_iotv_ocp_rifleman";
		_unit addweapon _rifle;
		_unit addmagazines [_riflemag,7];
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_smokegrenade,2];
		["rm"] call _backpack;
	};
	
// LOADOUT: MACHINE GUNNER (MEDIUM)
	case "mg":
	{
		removeVest _unit;
		_unit addVest "rhsusf_iotv_ocp_SAW";
		_unit addweapon _MMG;	
		_unit addmagazines [_MMGmag,6];
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_smokegrenade,2];
		["mg"] call _backpack;
		_attachments = [_scope3];		
	};

// LOADOUT: ASSISTANT GUNNER (MEDIUM)
	case "ag":
	{
		removeVest _unit;
		_unit addVest "rhsusf_iotv_ocp_SAW";
		_unit addweapon _rifle;
		_unit addmagazines [_MMGmag,6];
		_unit addmagazines [_riflemag,4];
		_unit addmagazines [_riflemag_tr,3];
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_smokegrenade,2];
		_unit addWeapon "Rangefinder";
		["ag"] call _backpack;
	};

// LOADOUT: ANTITANK SPECIALIST
	case "at":
	{
		removeVest _unit;
		_unit addVest "rhsusf_iotv_ocp_rifleman";
		_unit addweapon _rifle;	
		_unit addweapon _MAT;							//AT ammunition added in backpack.
		_unit addmagazines [_riflemag,7];
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_smokegrenade,2];
		["at"] call _backpack;
	};

// LOADOUT: AMMO HANDLER
	case "ah":
	{
		removeVest _unit;
		_unit addVest "rhsusf_iotv_ocp_rifleman";
		_unit addweapon _rifle;
		_unit addmagazines [_riflemag,7];
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_smokegrenade,2];
		_unit addWeapon "Rangefinder";;
		["ah"] call _backpack;
	};
	
// LOADOUT: ANTI-AIR SPECIALIST
	case "aa":
	{
		removeVest _unit;
		_unit addVest "rhsusf_iotv_ocp_rifleman";
		_unit addweapon _rifle;
		_unit addweapon _SAM;		
		_unit addmagazines [_riflemag,7];
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_smokegrenade,2];
		["aa"] call _backpack;
	};

// LOADOUT: AMMO HANDLER (ANTI-AIR)
	case "ahaa":
	{
		removeVest _unit;
		_unit addVest "rhsusf_iotv_ocp_rifleman";
		_unit addweapon _rifle;
		_unit addmagazines [_riflemag,7];
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_smokegrenade,2];
		_unit addWeapon "Rangefinder";
		["ahaa"] call _backpack;
	};	

// LOADOUT: MACHINE GUNNER (HEAVY)
	case "hmg":
	{
		removeVest _unit;
		_unit addVest "rhsusf_iotv_ocp_SAW";
		_unit addweapon _rifle;
		_unit addmagazines [_riflemag,7];
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_smokegrenade,2];
		["hmg"] call _backpack;
	};

// LOADOUT: ASSISTANT GUNNER (HEAYV)
	case "hag":
	{
		removeVest _unit;
		_unit addVest "rhsusf_iotv_ocp_SAW";
		_unit addweapon _rifle;
		_unit addmagazines [_riflemag,7];
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_smokegrenade,2];
		_unit addWeapon "Rangefinder";
		["hag"] call _backpack;
	};
	
// LOADOUT: ANTITANK SPECIALIST (DEPLOYABLE)
	case "atd":
	{
		removeVest _unit;
		_unit addVest "rhsusf_iotv_ocp_rifleman";
		_unit addweapon _rifle;
		_unit addmagazines [_riflemag,7];
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_smokegrenade,2];
		["atd"] call _backpack;
	};

// LOADOUT: AMMO HANDLER (AA - DEPLOYABLE)
	case "ahd":
	{
		removeVest _unit;
		_unit addVest "rhsusf_iotv_ocp_rifleman";
		_unit addweapon _rifle;
		_unit addmagazines [_riflemag,7];
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_smokegrenade,2];
		_unit addWeapon "Rangefinder";
		["ahd"] call _backpack;
	};

// LOADOUT: ANTI-AIR SPECIALIST (DEPLOYABLE)
	case "aad":
	{
		removeVest _unit;
		_unit addVest "rhsusf_iotv_ocp_rifleman";
		_unit addweapon _rifle;
		_unit addmagazines [_riflemag,7];
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_smokegrenade,2];
		["aad"] call _backpack;
	};

// LOADOUT: AMMO HANDLER (AA - DEPLOYABLE)
	case "ahaad":
	{
		removeVest _unit;
		_unit addVest "rhsusf_iotv_ocp_rifleman";
		_unit addweapon _rifle;
		_unit addmagazines [_riflemag,7];
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_smokegrenade,2];
		_unit addWeapon "Rangefinder";
		["ahaad"] call _backpack;
	};
	
// LOADOUT: MORTAR GUNNER
	case "mrtg":
	{
		removeVest _unit;
		_unit addVest "rhsusf_iotv_ocp_rifleman";
		_unit addweapon _rifle;
		_unit addmagazines [_riflemag,7];
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_smokegrenade,2];
		["mrtg"] call _backpack;
	};

// LOADOUT: MORTAR ASSISTANT GUNNER
	case "mrtag":
	{
		removeVest _unit;
		_unit addVest "rhsusf_iotv_ocp_rifleman";
		_unit addweapon _rifle;
		_unit addmagazines [_riflemag,7];
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_smokegrenade,2];
		_unit addWeapon "Rangefinder";
		["mrtag"] call _backpack;
	};

// LOADOUT: VEHICLE COMMANDER
	case "vc":
	{
		_unit addweapon _rifle;	
		_unit addmagazines [_riflemag,7];		
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_smokegrenade,2];
		_unit addItem "ItemGPS";
		_unit assignItem "ItemGPS";
		_unit addWeapon "Rangefinder";
		["ldr"] call _backpack;
	};

// LOADOUT: VEHICLE GUNNER
	case "vg":
	{
		_unit addweapon _rifle;	
		_unit addmagazines [_riflemag,7];
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_smokegrenade,2];
		_unit addItem "ItemGPS";
		_unit assignItem "ItemGPS";
		["cc"] call _backpack;
	};

// LOADOUT: VEHICLE DRIVER
	case "vd":
	{
		_unit addweapon _rifle;	
		_unit addmagazines [_riflemag,7];
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_smokegrenade,2];
		_unit addItem "ItemGPS";
		_unit assignItem "ItemGPS";
		["cc"] call _backpack;
	};

// LOADOUT: SCOUT TEAM LEADER (SCOUT TEAM LEADER/SCOUT ASSISTANT TEAM LEADER)
	case "scouttl":
	{
		removeVest _unit;
		_unit addVest "rhsusf_iotv_ocp_squadleader";
		_unit addweapon _glrifle;
		_unit addmagazines [_glriflemag,3];
		_unit addmagazines [_glriflemag_tr,4];
		_unit addmagazines [_glmag,2];
		_unit addmagazines [_glsmokewhite,2];
		_unit addmagazines [_glsmokered,2];
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_smokegrenadegreen,2];
		_unit linkItem "Laserdesignator";
		_unit addMagazine "Laserbatteries";		
		_unit linkItem "ItemGPS";
		["ldr"] call _backpack;
		_attachments = [_attach1,_scope2];
	};	

// LOADOUT: SCOUT
	case "scout":
	{
		removeVest _unit;
		_unit addVest "rhsusf_iotv_ocp_rifleman";
		_unit addweapon _rifle;
		_unit addmagazines [_riflemag,7];
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_smokegrenadegreen,2];
		_unit addWeapon "Rangefinder";	
		_unit linkItem "ItemGPS";
		["ldr"] call _backpack;
		_attachments = [_attach1,_scope2];
	};	

// LOADOUT: SCOUT (FLIR)
	case "scoutflir":
	{
		removeVest _unit;
		_unit addVest "rhsusf_iotv_ocp_rifleman";
		_unit addweapon _rifle;
		_unit addmagazines [_riflemag,7];
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_smokegrenadegreen,2];
		_unit addWeapon "Rangefinder";	
		_unit linkItem "ItemGPS";
		["ldr"] call _backpack;
		_attachments = [_attach1,_scope4];
	};	

// LOADOUT: SCOUT (DMR)
	case "scoutdmr":
	{
		removeVest _unit;
		_unit addVest "rhsusf_iotv_ocp_rifleman";
		_unit addweapon _SNrifle;
		_unit addmagazines [_SNriflemag,7];
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_smokegrenadegreen,2];
		_unit addWeapon "Rangefinder";	
		_unit linkItem "ItemGPS";
		["ldr"] call _backpack;
		_attachments = [_attach1,_scope5];
	};	
	
// LOADOUT: FIXED-WING PILOT
	case "fwp":
	{
		_unit addweapon _rifle;	
		_unit addmagazines [_riflemag,4];
		_unit addmagazines [_smokegrenadegreen,2];
		_unit addItem "ItemGPS";
		_unit assignItem "ItemGPS";
	};

// LOADOUT: ROTARY-WING PILOT
	case "rwp":
	{
		_unit addweapon _rifle;
		_unit addmagazines [_riflemag,4];
		_unit addmagazines [_smokegrenadegreen,2];
		_unit addItem "ItemGPS";
		_unit assignItem "ItemGPS";
	};

// LOADOUT: ROTARY-WING CREW CHIEF
	case "rwcc":
	{
		_unit addweapon _rifle;	
		_unit addmagazines [_riflemag,4];
		_unit addmagazines [_smokegrenadegreen,2];
		["cc"] call _backpack;
	};

// LOADOUT: ROTARY-WING CREW
	case "rwc":
	{
		_unit addweapon _rifle;
		_unit addmagazines [_riflemag,4];
		_unit addmagazines [_smokegrenadegreen,2];
		["cc"] call _backpack;	
	};

// CARGO: CAR - room for 10 weapons and 50 cargo items
	case "v_car":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addMagazineCargoGlobal [_riflemag, 20];	
		_unit addMagazineCargoGlobal [_ARmag, 10];		
		_unit addMagazineCargoGlobal [_glmag, 10];
		_unit addMagazineCargoGlobal [_glsmokewhite, 10];	
		_unit addMagazineCargoGlobal [_glsmokered, 10];	
		_unit addMagazineCargoGlobal [_MMGmag, 10];			
		_unit addMagazineCargoGlobal [_grenade, 10];
		_unit addMagazineCargoGlobal [_smokegrenade, 10];
		_unit addMagazineCargoGlobal [_smokegrenadegreen, 10];
		_unit addWeaponCargoGlobal [_RAT, 2];	
		_unit addMagazineCargoGlobal [_RATmag, 2];
		_unit addMagazineCargoGlobal [_MATmag1, 2];	
		_unit addItemCargoGlobal [_firstaid,10];
		_unit addItemCargoGlobal [_bandage,10];	
		_unit addItemCargoGlobal [_packingbandage,10];
		_unit addItemCargoGlobal [_tourniquet,10];
		_unit addItemCargoGlobal [_morphine,10];
		_unit addItemCargoGlobal [_epinephrine,10];
		_unit addItemCargoGlobal [_plasma,1];
		_unit addItemCargoGlobal [_plasma500,2];
		_unit addItemCargoGlobal [_plasma250,4];
		_unit addItemCargoGlobal [_blood,1];
		_unit addItemCargoGlobal [_blood500,2];
		_unit addItemCargoGlobal [_blood250,4];	
		_unit addItemCargoGlobal [_saline,1];
		_unit addItemCargoGlobal [_saline500,2];
		_unit addItemCargoGlobal [_saline250,4];
		_unit addItemCargoGlobal [_quikclot,10];
		_unit addItemCargoGlobal [_elasticbandage,10];
		_unit addItemCargoGlobal [_pak,10];
	};

// CARGO: TRUCK - room for 50 weapons and 200 cargo items
	case "v_tr":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addMagazineCargoGlobal [_riflemag, 40];	
		_unit addMagazineCargoGlobal [_ARmag, 20];		
		_unit addMagazineCargoGlobal [_glmag, 20];
		_unit addMagazineCargoGlobal [_glsmokewhite, 20];	
		_unit addMagazineCargoGlobal [_glsmokered, 20];	
		_unit addMagazineCargoGlobal [_MMGmag, 20];			
		_unit addMagazineCargoGlobal [_grenade, 20];
		_unit addMagazineCargoGlobal [_smokegrenade, 20];
		_unit addMagazineCargoGlobal [_smokegrenadegreen, 20];
		_unit addWeaponCargoGlobal [_RAT, 4];	
		_unit addMagazineCargoGlobal [_RATmag, 4];
		_unit addMagazineCargoGlobal [_MATmag1, 4];	
		_unit addItemCargoGlobal [_firstaid,20];
		_unit addItemCargoGlobal [_bandage,20];	
		_unit addItemCargoGlobal [_packingbandage,20];
		_unit addItemCargoGlobal [_tourniquet,20];
		_unit addItemCargoGlobal [_morphine,20];
		_unit addItemCargoGlobal [_epinephrine,20];
		_unit addItemCargoGlobal [_plasma,2];
		_unit addItemCargoGlobal [_plasma500,4];
		_unit addItemCargoGlobal [_plasma250,8];
		_unit addItemCargoGlobal [_blood,2];
		_unit addItemCargoGlobal [_blood500,4];
		_unit addItemCargoGlobal [_blood250,8];	
		_unit addItemCargoGlobal [_saline,2];
		_unit addItemCargoGlobal [_saline500,4];
		_unit addItemCargoGlobal [_saline250,8];
		_unit addItemCargoGlobal [_quikclot,20];
		_unit addItemCargoGlobal [_elasticbandage,20];
		_unit addItemCargoGlobal [_pak,20];
	};

// CARGO: IFV - room for 10 weapons and 100 cargo items
	case "v_ifv":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addMagazineCargoGlobal [_riflemag, 40];	
		_unit addMagazineCargoGlobal [_ARmag, 20];		
		_unit addMagazineCargoGlobal [_glmag, 20];
		_unit addMagazineCargoGlobal [_glsmokewhite, 20];	
		_unit addMagazineCargoGlobal [_glsmokered, 20];	
		_unit addMagazineCargoGlobal [_MMGmag, 20];			
		_unit addMagazineCargoGlobal [_grenade, 20];
		_unit addMagazineCargoGlobal [_smokegrenade, 20];
		_unit addMagazineCargoGlobal [_smokegrenadegreen, 20];
		_unit addWeaponCargoGlobal [_RAT, 4];	
		_unit addMagazineCargoGlobal [_RATmag, 4];
		_unit addMagazineCargoGlobal [_MATmag1, 4];	
		_unit addItemCargoGlobal [_firstaid,20];
		_unit addItemCargoGlobal [_bandage,20];	
		_unit addItemCargoGlobal [_packingbandage,20];
		_unit addItemCargoGlobal [_tourniquet,20];
		_unit addItemCargoGlobal [_morphine,20];
		_unit addItemCargoGlobal [_epinephrine,20];
		_unit addItemCargoGlobal [_plasma,2];
		_unit addItemCargoGlobal [_plasma500,4];
		_unit addItemCargoGlobal [_plasma250,8];
		_unit addItemCargoGlobal [_blood,2];
		_unit addItemCargoGlobal [_blood500,4];
		_unit addItemCargoGlobal [_blood250,8];	
		_unit addItemCargoGlobal [_saline,2];
		_unit addItemCargoGlobal [_saline500,4];
		_unit addItemCargoGlobal [_saline250,8];
		_unit addItemCargoGlobal [_quikclot,20];
		_unit addItemCargoGlobal [_elasticbandage,20];
		_unit addItemCargoGlobal [_pak,20];
	};

// CRATE: Small, ammo for 1 fireteam
	case "crate_small":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addMagazineCargoGlobal [_riflemag, 5];
		_unit addMagazineCargoGlobal [_glriflemag, 5];
		_unit addMagazineCargoGlobal [_armag, 5];
		_unit addMagazineCargoGlobal [_carbinemag, 5];
		_unit addMagazineCargoGlobal [_glmag, 5];
		_unit addMagazineCargoGlobal [_glsmokewhite, 4];
		_unit addMagazineCargoGlobal [_ratmag, 2];
		_unit addMagazineCargoGlobal [_grenade, 8];
		_unit addMagazineCargoGlobal [_mgrenade, 8];
		_unit addMagazineCargoGlobal [_smokegrenade, 8];
		_unit addMagazineCargoGlobal [_smokegrenadegreen, 2];
		_unit addItemCargoGlobal [_firstaid, 6];
	};

// CRATE: Medium, ammo for 1 squad
	case "crate_med":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addMagazineCargoGlobal [_riflemag, 15];
		_unit addMagazineCargoGlobal [_glriflemag, 20];
		_unit addMagazineCargoGlobal [_armag, 15];
		_unit addMagazineCargoGlobal [_carbinemag, 20];
		_unit addMagazineCargoGlobal [_glmag, 20];
		_unit addMagazineCargoGlobal [_glsmokewhite,16];
		_unit addMagazineCargoGlobal [_ratmag, 6];
		_unit addMagazineCargoGlobal [_grenade, 25];
		_unit addMagazineCargoGlobal [_mgrenade, 25];
		_unit addMagazineCargoGlobal [_smokegrenade, 25];
		_unit addMagazineCargoGlobal [_smokegrenadegreen, 6];
		_unit addItemCargoGlobal [_firstaid, 25];
	};

// CRATE: Large, ammo for 1 platoon
	case "crate_large":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addMagazineCargoGlobal [_riflemag, 45];
		_unit addMagazineCargoGlobal [_glriflemag, 60];
		_unit addMagazineCargoGlobal [_armag, 45];
		_unit addMagazineCargoGlobal [_carbinemag, 60];
		_unit addMagazineCargoGlobal [_glmag, 60];
		_unit addMagazineCargoGlobal [_glsmokewhite,50];
		_unit addMagazineCargoGlobal [_ratmag, 20];
		_unit addMagazineCargoGlobal [_grenade, 75];
		_unit addMagazineCargoGlobal [_mgrenade, 75];
		_unit addMagazineCargoGlobal [_smokegrenade, 75];
		_unit addMagazineCargoGlobal [_smokegrenadegreen, 20];
		_unit addItemCargoGlobal [_firstaid, 75];
	};

////////////////ALL PRESETS BELOW THIS LINE ARE NON-ORGANIC AND INCORRECTLY CLASSIFIED
	
// LOADOUT: SNIPER
	case "sn":
	{
		_unit addmagazines [_SNrifleMag,9];
		_unit addweapon _SNrifle;
		_unit addmagazines [_pistolmag,4];
		_unit addweapon _pistol;
		_unit addmagazines [_smokegrenade,2];
		_attachments = [_attach1,_scope3];
	};

// LOADOUT: SPOTTER
	case "sp":
	{
		_unit addmagazines [_glriflemag,7];
		_unit addmagazines [_glriflemag_tr,2];
		_unit addmagazines [_glmag,3];
		_unit addmagazines [_glsmokewhite,4];
		_unit addweapon _glrifle;					//_COrifle
		_unit addmagazines [_smokegrenade,2];
		_unit addWeapon "Rangefinder";
		_unit linkItem "ItemGPS";
	};

// LOADOUT: ENGINEER (DEMO)
	case "eng":
	{
		_unit addmagazines [_carbinemag,7];
		_unit addweapon _carbine;
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_mgrenade,1];
		_unit addmagazines [_satchel,2];
		_unit addItem "MineDetector";
		["eng"] call _backpack;
	};

// LOADOUT: ENGINEER (MINES)
	case "engm":
	{
		_unit addmagazines [_carbinemag,7];
		_unit addweapon _carbine;
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_mgrenade,1];
		_unit addmagazines [_APmine2,2];
		_unit addItem "MineDetector";
		["engm"] call _backpack;
	};

// LOADOUT: UAV OPERATOR
	case "uav":
	{
		_unit addmagazines [_smgmag,5];
		_unit addweapon _smg;
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_mgrenade,1];
		_unit linkItem _uavterminal;
		["uav"] call _backpack;
		_unit addMagazines ["Laserbatteries",4];	// Batteries added for the F3 UAV Recharging component
	};

// LOADOUT: Diver
	case "div":
	{
		_unit addmagazines [_diverMag1,4];
		_unit addmagazines [_diverMag2,3];
		_unit addweapon _diverWep;
		_unit addmagazines [_grenade,3];
		_unit addmagazines [_mgrenade,3];
		_unit addmagazines [_smokegrenade,3];
		_attachments = [_attach1,_scope1,_silencer1];
		["div"] call _backpack;
	};

// LOADOUT: CARABINEER
	case "car":
	{
		_unit addmagazines [_carbinemag,7];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addweapon _carbine;
		_unit addmagazines [_grenade,3];
		_unit addmagazines [_mgrenade,3];
		_unit addmagazines [_smokegrenade,3];
		["car"] call _backpack;
	};

// LOADOUT: SUBMACHINEGUNNER
	case "smg":
	{
		_unit addmagazines [_smgmag,7];
		_unit addweapon _smg;
		_unit addmagazines [_grenade,3];
		_unit addmagazines [_mgrenade,3];
		_unit addmagazines [_smokegrenade,3];
		["smg"] call _backpack;
	};

// LOADOUT: DEFAULT/UNDEFINED (use RIFLEMAN)
   default
   {
		_unit addmagazines [_riflemag,7];
		_unit addweapon _rifle;

		_unit selectweapon primaryweapon _unit;

		if (true) exitwith {player globalchat format ["DEBUG (f\assignGear\folk_assignGear.sqf): Unit = %1. Gear template %2 does not exist, used Rifleman instead.",_unit,_typeofunit]};
   };

// ====================================================================================

// END SWITCH FOR DEFINE UNIT TYPE LOADOUTS
};

// ====================================================================================

// If this is an ammobox, check medical component settings and if needed run converter script.

if (!_isMan) then
	{
	// Authentic Gameplay Modification
	if (f_var_medical == 2) exitWith
		{
			[_unit] execVM "f\medical\AGM_converter.sqf";
		};
	};

// ====================================================================================

// If this isn't run on an infantry unit we can exit
if !(_isMan) exitWith {};

// ====================================================================================

// Handle weapon attachments
#include "f_assignGear_attachments.sqf";

// ====================================================================================

// ENSURE UNIT HAS CORRECT WEAPON SELECTED ON SPAWNING

_unit selectweapon primaryweapon _unit;
