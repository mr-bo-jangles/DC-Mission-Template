DC_actionmenu_add =
{
	// Args
	private["_object", "_actionName", "_actionFunc", "_actionArgs", "_actionIdVariable", "_actionPriority", "_actionCondition"];
	private["_actionId"];
	_object = (_this select 0);
	_actionName = (_this select 1);
	_actionFunc = (_this select 2);
	_actionArgs = (_this select 3);
	_actionIdVariable = (_this select 4);
	_actionPriority = (_this select 5);
	_actionCondition = (_this select 6);	
	if (isNull _object) exitWith {};

	// If this action already exists remove it
	if (_object getVariable _actionIdVariable > -1) then {
		_object removeAction (_object getVariable _actionIdVariable);
	};

	// Add a new action in the actionmenu
	_actionId = _object addAction [_actionName, _actionFunc, _actionArgs, _actionPriority, true, true, "", _actionCondition];
	_object setVariable [_actionIdVariable, _actionId, false];

	//hint format["Created new action %1, with id: %2", _actionIdVariable, _actionId];
};

DC_actionmenu_remove = {
	// Args
	private["_object", "_actionIdVariable"];
	private["_actionId"];
	_object = (_this select 0);
	_actionIdVariable = (_this select 1);
	if (isNull _object) exitWith {};

	// Remove action from actionmenu
	_actionId = _object getVariable _actionIdVariable;
	_object removeAction _actionId;
	_object setVariable [_actionIdVariable, -1, false];
	
	//hint format["Remove action:\nIDVAR: %1\nID: %2\n", _object, _actionId];
};

DC_actionmenu_add_mp =
{
	// Args
	private["_object", "_actionName", "_actionFunc", "_actionArgs", "_actionIdVariable", "_actionPriority", "_actionCondition"];
	_object = (_this select 0);
	_actionName = (_this select 1);
	_actionFunc = (_this select 2);
	_actionArgs = (_this select 3);
	_actionIdVariable = (_this select 4);
	_actionPriority = (_this select 5);
	_actionCondition = (_this select 6);
	if (isNull _object) exitWith {};

	// Add a new action in the actionmenu for all multiplayer clients
	[[_object, _actionName, _actionFunc, _actionArgs, _actionIdVariable, _actionPriority, _actionCondition], "DC_actionmenu_add"]
		call BIS_fnc_MP;
};

DC_actionmenu_remove_mp = {
	// Args
	private["_object", "_actionIdVariable"];
	_object = (_this select 0);
	_actionIdVariable = (_this select 1);
	if (isNull _object) exitWith {};

	// Remove action from actionmenu
	[[_object, _actionIdVariable], "DC_actionmenu_remove"]
		call BIS_fnc_MP;
};
