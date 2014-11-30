// F3 - Folk Group Markers
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// DECLARE PRIVATE VARIABLES

private ["_grp","_mkrType","_mkrText","_mkrColor","_mkrName","_mkr","_grpName"];

// ====================================================================================

// SET KEY VARIABLES
// Using variables passed to the script instance, we will create some local variables:

call compile format ["
if(!isnil '%1') then
{
	_grp = %1;
};
",_this select 0];

_grpName = _this select 0;
_mkrType = _this select 1;
_mkrText = _this select 2;
_mkrColor = _this select 3;
_mkrName = format ["mkr_%1",_grpName];

// ====================================================================================

// WAIT FOR GROUP TO EXIST IN-MISSION
// We wait for the group to have members before creating the marker.

if (isNil "_grp") then
{
	call compile format ["
		waitUntil {
		sleep 3;
		if(!isnil '%1') then
		{
			count units %1 > 0
		};
		};
		_grp = %1;

	",_grpName];

};

// ====================================================================================

// EXIT FOR EMPTY GROUPS (PART I)
// If the group is empty, this script exits.

if (isnil "_grp") exitWith {};

// ====================================================================================

// CREATE MARKER
// Depending on the value of _mkrType a different type of marker is created.

switch (_mkrType) do
{
// MARKER: HEADQUARTERS
	case 0:
	{
		_mkr = createMarkerLocal [_mkrName,[(getPos leader _grp select 0),(getPos leader _grp select 1)]];
		_mkr setMarkerShapeLocal "ICON";
		_mkrName setMarkerTypeLocal "b_hq";
		_mkrName setMarkerColorLocal _mkrColor;
		_mkrName setMarkerSizeLocal [0.7, 0.7];
		_mkrName setMarkerTextLocal _mkrText;
	};
// MARKER: INFANTRY RIFLE FIRE TEAM
	case 1:
	{
		_mkr = createMarkerLocal [_mkrName,[(getPos leader _grp select 0),(getPos leader _grp select 1)]];
		_mkr setMarkerShapeLocal "ICON";
		_mkrName setMarkerTypeLocal  "b_inf";
		_mkrName setMarkerColorLocal _mkrColor;
		_mkrName setMarkerSizeLocal [0.7, 0.7];
		_mkrName setMarkerTextLocal _mkrText;
	};
// MARKER: WEAPONS TEAM (MACHINE GUNS, LAUNCHERS)
	case 2:
	{
		_mkr = createMarkerLocal [_mkrName,[(getPos leader _grp select 0),(getPos leader _grp select 1)]];
		_mkr setMarkerShapeLocal "ICON";
		_mkrName setMarkerTypeLocal  "b_support";
		_mkrName setMarkerColorLocal _mkrColor;
		_mkrName setMarkerSizeLocal [0.7, 0.7];
		_mkrName setMarkerTextLocal _mkrText;
	};
	// MARKER: MORTAR SQUAD
	case 3:
	{
		_mkr = createMarkerLocal [_mkrName,[(getPos leader _grp select 0),(getPos leader _grp select 1)]];
		_mkr setMarkerShapeLocal "ICON";
		_mkrName setMarkerTypeLocal  "b_mortar";
		_mkrName setMarkerColorLocal _mkrColor;
		_mkrName setMarkerSizeLocal [0.7, 0.7];
		_mkrName setMarkerTextLocal _mkrText;
	};
// MARKER: IFV AND APC
	case 4:
	{
		_mkr = createMarkerLocal [_mkrName,[(getPos leader _grp select 0),(getPos leader _grp select 1)]];
		_mkr setMarkerShapeLocal "ICON";
		_mkrName setMarkerTypeLocal  "b_mech_inf";
		_mkrName setMarkerColorLocal _mkrColor;
		_mkrName setMarkerSizeLocal [0.7, 0.7];
		_mkrName setMarkerTextLocal _mkrText;
	};	
// MARKER: INFANTRY SCOUT TEAM
	case 5:
	{
		_mkr = createMarkerLocal [_mkrName,[(getPos leader _grp select 0),(getPos leader _grp select 1)]];
		_mkr setMarkerShapeLocal "ICON";
		_mkrName setMarkerTypeLocal  "b_recon";
		_mkrName setMarkerColorLocal _mkrColor;
		_mkrName setMarkerSizeLocal [0.7, 0.7];
		_mkrName setMarkerTextLocal _mkrText;
	};
// MARKER: COMBAT ENGINEER
	case 6:
	{
		_mkr = createMarkerLocal [_mkrName,[(getPos leader _grp select 0),(getPos leader _grp select 1)]];
		_mkr setMarkerShapeLocal "ICON";
		_mkrName setMarkerTypeLocal  "b_maint";
		_mkrName setMarkerColorLocal _mkrColor;
		_mkrName setMarkerSizeLocal [0.7, 0.7];
		_mkrName setMarkerTextLocal _mkrText;
	};
// MARKER: ARMOR
	case 7:
	{
		_mkr = createMarkerLocal [_mkrName,[(getPos leader _grp select 0),(getPos leader _grp select 1)]];
		_mkr setMarkerShapeLocal "ICON";
		_mkrName setMarkerTypeLocal  "b_armor";
		_mkrName setMarkerColorLocal _mkrColor;
		_mkrName setMarkerSizeLocal [0.7, 0.7];
		_mkrName setMarkerTextLocal _mkrText;
	};
// MARKER: FIXED-WING SUPPORT
	case 8:
	{
		_mkr = createMarkerLocal [_mkrName,[(getPos leader _grp select 0),(getPos leader _grp select 1)]];
		_mkr setMarkerShapeLocal "ICON";
		_mkrName setMarkerTypeLocal  "b_plane";
		_mkrName setMarkerColorLocal _mkrColor;
		_mkrName setMarkerSizeLocal [0.7, 0.7];
		_mkrName setMarkerTextLocal _mkrText;
	};
// MARKER: ROTARY-WING SUPPORT
	case 9:
	{
		_mkr = createMarkerLocal [_mkrName,[(getPos leader _grp select 0),(getPos leader _grp select 1)]];
		_mkr setMarkerShapeLocal "ICON";
		_mkrName setMarkerTypeLocal  "b_air";
		_mkrName setMarkerColorLocal _mkrColor;
		_mkrName setMarkerSizeLocal [0.7, 0.7];
		_mkrName setMarkerTextLocal _mkrText;
	};

	// MARKER: ARTILLERY
	case 10:
	{
		_mkr = createMarkerLocal [_mkrName,[(getPos leader _grp select 0),(getPos leader _grp select 1)]];
		_mkr setMarkerShapeLocal "ICON";
		_mkrName setMarkerTypeLocal  "b_art";
		_mkrName setMarkerColorLocal _mkrColor;
		_mkrName setMarkerSizeLocal [0.7, 0.7];
		_mkrName setMarkerTextLocal _mkrText;
	};
};
// ====================================================================================

// UPDATE MARKER POSITION
// As long as certain conditions are met (the group exists) the marker
// position is updated periodically. This only happens locally - so as not to burden
// the server.

while {{!isNull _x} count units _grp > 0} do
{
	_mkrName setMarkerPosLocal [(getPos leader _grp select 0),(getPos leader _grp select 1)];
	sleep 6;
};


// ====================================================================================


