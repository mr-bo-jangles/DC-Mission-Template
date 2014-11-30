private["_typeOfUnit", "_unit", "_sl_groups", "_sl_unit_group_index", "_ft_groups", "_ft_unit_group_index", "_unit_group", "_freq"];

if(alive player) then {

  _unit = player;

  // Wait for gear assignation to take place
  _unit globalChat "DC Radio channels script started, Waiting for gear assign";
  waitUntil{player getVariable ["f_var_assignGear_done", false];};
  _unit globalChat "DC Radio - Gear assigned";

  _typeOfUnit = _unit getVariable ["f_var_assignGear", "NIL"];

  if(_typeOfUnit != "NIL") then {

    // If radios are enabled in the settings
    if(!f_radios_settings_tfr_disableRadios) then {

      // SW Radio
      waitUntil {_unit globalChat "DC Radio channels script waiting for SW radio";sleep 10;(call TFAR_fnc_haveSWRadio);};
      _unit globalChat "DC Radio channels script switching SW channels";

      // Map SL group variables to frequencies
      _sl_groups = [
                    missionNamespace getVariable "GrpNATO_D1_1_SL", 101,
                    missionNamespace getVariable "GrpNATO_D1_2_SL", 102,
                    missionNamespace getVariable "GrpNATO_D1_3_SL", 103,
                    missionNamespace getVariable "GrpNATO_D1_4_SL", 104,
                    missionNamespace getVariable "GrpNATO_S_PL", 110,
                    missionNamespace getVariable "GrpNATO_H_PL", 120,
                    missionNamespace getVariable "GrpNATO_T_PL", 130,
                    missionNamespace getVariable "GrpFIA_1_1_SL", 101,
                    missionNamespace getVariable "GrpFIA_1_2_SL", 102,
                    missionNamespace getVariable "GrpFIA_1_3_SL", 103,
                    missionNamespace getVariable "GrpFIA_1_4_SL", 104,
                    missionNamespace getVariable "GrpCSAT_1_1_SL", 101,
                    missionNamespace getVariable "GrpCSAT_1_2_SL", 102,
                    missionNamespace getVariable "GrpCSAT_1_3_SL", 103,
                    missionNamespace getVariable "GrpCSAT_1_4_SL", 104,
                    missionNamespace getVariable "GrpAAF_1_1_SL", 101,
                    missionNamespace getVariable "GrpAAF_1_2_SL", 102,
                    missionNamespace getVariable "GrpAAF_1_3_SL", 103,
                    missionNamespace getVariable "GrpAAF_1_4_SL", 104
                    ];

      // Map FT group variables to frequencies
      _ft_groups = [
                    missionNamespace getVariable "GrpNATO_D_CO", 100.6,
                    missionNamespace getVariable "GrpNATO_D1_PL", 100.6,
                    missionNamespace getVariable "GrpNATO_D1_1_A", 101.1,
                    missionNamespace getVariable "GrpNATO_D1_1_B", 101.2,
                    missionNamespace getVariable "GrpNATO_D1_2_A", 102.1,
                    missionNamespace getVariable "GrpNATO_D1_2_B", 102.2,
                    missionNamespace getVariable "GrpNATO_D1_3_A", 103.1,
                    missionNamespace getVariable "GrpNATO_D1_3_B", 103.2,
                    missionNamespace getVariable "GrpNATO_D1_4_A", 104.1,
                    missionNamespace getVariable "GrpNATO_D1_4_B", 104.2,
                    missionNamespace getVariable "GrpNATO_D1_4_C", 104.3,
                    missionNamespace getVariable "GrpNATO_D1_4_D", 104.4,
                    missionNamespace getVariable "GrpNATO_S1", 110.1,
                    missionNamespace getVariable "GrpNATO_S2", 110.2,
                    missionNamespace getVariable "GrpNATO_S3", 110.3,
                    missionNamespace getVariable "GrpNATO_S_IFV1", 110.4,
                    missionNamespace getVariable "GrpNATO_S_IFV2", 110.5,
                    missionNamespace getVariable "GrpNATO_S_IFV3", 110.6,
                    missionNamespace getVariable "GrpNATO_S_IFV4", 110.7,
                    missionNamespace getVariable "GrpNATO_S_PL", 110.8,
                    missionNamespace getVariable "GrpNATO_H1", 120.1,
                    missionNamespace getVariable "GrpNATO_H2", 120.2,
                    missionNamespace getVariable "GrpNATO_T1", 130.1,
                    missionNamespace getVariable "GrpNATO_T2", 130.2,
                    missionNamespace getVariable "GrpNATO_T3", 130.3,
                    missionNamespace getVariable "GrpNATO_T4", 130.4,
                    missionNamespace getVariable "GrpNATO_S2_1", 142.1,
                    missionNamespace getVariable "GrpNATO_S2_2", 142.2,
                    missionNamespace getVariable "GrpNATO_S2_3", 142.3,
                    missionNamespace getVariable "GrpNATO_S2_4", 142.4,
                    missionNamespace getVariable "GrpNATO_S2_5", 142.5,
                    missionNamespace getVariable "GrpNATO_S2_6", 142.6,
                    missionNamespace getVariable "GrpFIA_1_1_1", 101.1,
                    missionNamespace getVariable "GrpFIA_1_1_2", 101.2,
                    missionNamespace getVariable "GrpFIA_1_2_1", 102.1,
                    missionNamespace getVariable "GrpFIA_1_2_2", 102.2,
                    missionNamespace getVariable "GrpFIA_1_3_1", 103.1,
                    missionNamespace getVariable "GrpFIA_1_3_2", 103.2,
                    missionNamespace getVariable "GrpFIA_1_4_1", 104.1,
                    missionNamespace getVariable "GrpFIA_1_4_2", 104.2,
                    missionNamespace getVariable "GrpCSAT_1_1_1", 101.1,
                    missionNamespace getVariable "GrpCSAT_1_1_2", 101.2,
                    missionNamespace getVariable "GrpCSAT_1_2_1", 102.1,
                    missionNamespace getVariable "GrpCSAT_1_2_2", 102.2,
                    missionNamespace getVariable "GrpCSAT_1_3_1", 103.1,
                    missionNamespace getVariable "GrpCSAT_1_3_2", 103.2,
                    missionNamespace getVariable "GrpCSAT_1_4_1", 104.1,
                    missionNamespace getVariable "GrpCSAT_1_4_2", 104.2,
                    missionNamespace getVariable "GrpAAF_1_1_1", 101.1,
                    missionNamespace getVariable "GrpAAF_1_1_2", 101.2,
                    missionNamespace getVariable "GrpAAF_1_2_1", 102.1,
                    missionNamespace getVariable "GrpAAF_1_2_2", 102.2,
                    missionNamespace getVariable "GrpAAF_1_3_1", 103.1,
                    missionNamespace getVariable "GrpAAF_1_3_2", 103.2,
                    missionNamespace getVariable "GrpAAF_1_4_1", 104.1,
                    missionNamespace getVariable "GrpAAF_1_4_2", 104.2
                    ];

      // Get unit group and locate group in group lists
      _unit_group = group _unit;
      _sl_unit_group_index = _sl_groups find _unit_group;
      _ft_unit_group_index = _ft_groups find _unit_group;

      if (_sl_unit_group_index != -1) then {

        // set primary channel frequency
        _unit globalChat "DC unit in Squad Lead group";
        _freq = _sl_groups select (_sl_unit_group_index + 1);
        [(call TFAR_fnc_activeSwRadio), 1, str (_freq)] call TFAR_fnc_setChannelFrequency;
        call TFAR_fnc_updateSWDialogToChannel;
        // If unit is leader of group, set alternate radio channel to CO/DC channel
        if (_unit == (leader (group _unit))) then {
          _unit globalChat "DC unit is a group Leader";
          [(call TFAR_fnc_activeSwRadio), 2, "100"] call TFAR_fnc_setChannelFrequency;
          [(call TFAR_fnc_activeSwRadio), 1] call TFAR_fnc_setAdditionalSwChannel;
          call TFAR_fnc_updateSWDialogToChannel;
        };
      };

      if (_ft_unit_group_index != -1) then {

        // set primary channel frequency
        _unit globalChat "DC unit in Fire Team group";
        _freq = _ft_groups select (_ft_unit_group_index + 1);
        [(call TFAR_fnc_activeSwRadio), 1, str (_freq)] call TFAR_fnc_setChannelFrequency;
        call TFAR_fnc_updateSWDialogToChannel;
        // If unit is leader of group, set alternate radio channel to SL channel
        if (_unit == (leader (group _unit))) then {
          _unit globalChat "Tfar unit is a group Leader";
          [(call TFAR_fnc_activeSwRadio), 2, str (floor _freq)] call TFAR_fnc_setChannelFrequency;
          [(call TFAR_fnc_activeSwRadio), 1] call TFAR_fnc_setAdditionalSwChannel;
          call TFAR_fnc_updateSWDialogToChannel;
        };

      };

      _unit globalChat "DC Radio channels Set";
    };
  };
  _unit globalChat "DC Radio channels script ended";

};