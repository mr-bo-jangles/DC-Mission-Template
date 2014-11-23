private["_hero"];

#include "DC\helpers\addActions.sqf"

_hero = (_this select 0);

sleep 1;

CIV_act_join = {
    private["_actionObject"];
    _actionObject = (_this select 0);
    [_actionObject] joinSilent (group player);
    _actionObject setCaptive true;
    [_actionObject, "CIV_act_id_join"]
        call DC_actionmenu_remove_mp;
};

[_hero, "Join our group", CIV_act_join, [], "CIV_act_id_join", 1, ""]
    call DC_actionmenu_add;