// Public Event handlers
"MEDIX_EVT_TREATED" addPublicVariableEventHandler {
	_treated = (_this select 1 select 0);
	_treater = (_this select 1 select 1);
	if (_treated == player) then {
		MEDIX_CACHE_DAMAGE = 1-(MEDIX_PRP_TREATRESULT/100);
		player setDamage MEDIX_CACHE_DAMAGE;
		player enableSimulation true;
		player playAction "AgonyStop";
		hint format["You have been fully treated by %1", name _treater];
		MEDIX_EFFECT1 ppEffectAdjust [0.0];
		MEDIX_EFFECT1 ppEffectCommit 5;
		MEDIX_EFFECT2 ppEffectAdjust [1.0, 1.0, 0.0, [0.0, 0.0, 0.0, 0.0], [0.0, 1.0, 1.0, 1.0], [0.0, 0.0, 0.0, 0.0]];
		MEDIX_EFFECT2 ppEffectCommit 5;

		[[player, false], "F_MEDIX_SetCaptive"] call BIS_fnc_MP;
	};
};

"MEDIX_EVT_STABILIZED" addPublicVariableEventHandler {
	_treated = (_this select 1 select 0);
	_treater = (_this select 1 select 1);
	if (_treated == player) then {
		hint format["You received first aid by %1", name _treater];
	};
};

"MEDIX_EVT_UNCONSCIOUS" addPublicVariableEventHandler {
	_unconscious = (_this select 1 select 0);
	[_unconscious] spawn MEDIX_FNC_UNCONSCIOUS;
};

"MEDIX_EVT_DRAGGED" addPublicVariableEventHandler {
	_dragged = (_this select 1 select 0);
	_dragger = (_this select 1 select 1);
	_dragged attachTo [_dragger, [0, 1.1, 0.092]];
	_dragged switchMove "AinjPpneMstpSnonWrflDb";
	_dragged setDir 180;
	if (_dragged == player) then {
		player enableSimulation false;
	};
};

"MEDIX_EVT_RELEASED" addPublicVariableEventHandler {
	_dragged = (_this select 1 select 0);
	_dragger = (_this select 1 select 1);
	detach _dragged;
	if (_dragged == player) then {
		_dragged enableSimulation true;
		_dragged enableSimulation false;
		_dragged enableSimulation true;

		MEDIX_EVT_UNCONSCIOUS = [_dragged];
		publicVariable "MEDIX_EVT_UNCONSCIOUS";
		[_dragged] spawn MEDIX_FNC_UNCONSCIOUS;
	};
};

"MEDIX_EVT_ISKILLED" addPublicVariableEventHandler {
	_killed = (_this select 1 select 0);
	if (!isNil "MEDIX_DRAGGINGUNIT") then {
		if (MEDIX_DRAGGINGUNIT == _killed) then {
			[] spawn MEDIX_FNC_RELEASE;
		};
	};
};

// Local Event Handlers
MEDIX_EVT_HANDLEDAMAGE = {
	MEDIX_CACHE_DAMAGE = damage player;
	if (player getVariable "MEDIX_ISBLEEDING") exitWith {};

	_hitDmg = _this select 2;

	if (damage player > (MEDIX_PRP_MAXDAMAGE/100)) then {
		player setVariable ["MEDIX_ISBLEEDING", true, true];
		player setVariable ["MEDIX_ISSTABILIZED", false, true];

		MEDIX_EVT_UNCONSCIOUS = [player];
		publicVariable "MEDIX_EVT_UNCONSCIOUS";
		[player] spawn MEDIX_FNC_UNCONSCIOUS;
	};

	_hitPart = _this select 1;
	_source = _this select 3;

	// [] spawn MEDIX_EFX_REGULARHIT;

	if ((player distance _source) > MEDIX_PRP_HELMDEFLECTDISTANCE) then {
		if (_hitPart == "head" || _hitPart == "") then {
			if (_hitDmg > 0.8) then {
				_rand = random 1;
				if (_rand > (1-(MEDIX_PHP_HELMDEFLECTCHANCE/100))) then {
					_hitDmg = (damage player) + (MEDIX_PRP_HELMDEFLECTDMG/100);
					[] spawn MEDIX_EFX_HELMETHIT;
				};
			};
		};
	};
	_hitDmg;
};
player addEventHandler ["HandleDamage", MEDIX_EVT_HANDLEDAMAGE];

MEDIX_EVT_KILLED = {
	MEDIX_EVT_ISKILLED = [player];
	publicVariable "MEDIX_EVT_ISKILLED";
	MEDIX_EFFECT1 ppEffectAdjust [0.0];
	MEDIX_EFFECT1 ppEffectCommit 5;
	MEDIX_EFFECT2 ppEffectAdjust [1.0, 1.0, 0.0, [0.0, 0.0, 0.0, 0.0], [0.0, 1.0, 1.0, 1.0], [0.0, 0.0, 0.0, 0.0]];
	MEDIX_EFFECT2 ppEffectCommit 5;
	MEDIX_CACHE_DAMAGE = 0;
	MEDIX_ACTIVE = false;
};
player addEventHandler ["killed", MEDIX_EVT_KILLED];
