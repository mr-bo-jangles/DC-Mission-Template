// Map SL group variables to frequencies
_sl_groups = [GrpNATO_1_1_SL, 101, GrpNATO_1_2_SL, 102, GrpNATO_1_3_SL, 103, GrpNATO_1_4_SL, 104,
              GrpFIA_1_1_SL, 101, GrpFIA_1_2_SL, 102, GrpFIA_1_3_SL, 103, GrpFIA_1_4_SL, 104,
              GrpCSAT_1_1_SL, 101, GrpCSAT_1_2_SL, 102, GrpCSAT_1_3_SL, 103, GrpCSAT_1_4_SL, 104,
              GrpAAF_1_1_SL, 101, GrpAAF_1_2_SL, 102, GrpAAF_1_3_SL, 103, GrpAAF_1_4_SL, 104
              ];

// Map FT group variables to frequencies
_ft_groups = [GrpNATO_1_1_1, 101.1, GrpNATO_1_1_2, 101.2, GrpNATO_1_2_1, 102.1, GrpNATO_1_2_2, 102.2,
              GrpNATO_1_3_1, 103.1, GrpNATO_1_3_2, 103.2, GrpNATO_1_4_1, 104.1, GrpNATO_1_4_2, 104.2,
              GrpFIA_1_1_1, 101.1, GrpFIA_1_1_2, 101.2, GrpFIA_1_2_1, 102.1, GrpFIA_1_2_2, 102.2,
              GrpFIA_1_3_1, 103.1, GrpFIA_1_3_2, 103.2, GrpFIA_1_4_1, 104.1, GrpFIA_1_4_2, 104.2,
              GrpCSAT_1_1_1, 101.1, GrpCSAT_1_1_2, 101.2, GrpCSAT_1_2_1, 102.1, GrpCSAT_1_2_2, 102.2,
              GrpCSAT_1_3_1, 103.1, GrpCSAT_1_3_2, 103.2, GrpCSAT_1_4_1, 104.1, GrpCSAT_1_4_2, 104.2,
              GrpAAF_1_1_1, 101.1, GrpAAF_1_1_2, 101.2, GrpAAF_1_2_1, 102.1, GrpAAF_1_2_2, 102.2,
              GrpAAF_1_3_1, 103.1, GrpAAF_1_3_2, 103.2, GrpAAF_1_4_1, 104.1, GrpAAF_1_4_2, 104.2
              ];

// Get unit group and locate group in group lists
_unit_group = group _unit;
_sl_unit_group_index = _sl_groups find _unit_group;
_ft_unit_group_index = _ft_groups find _unit_group;

if (! _sl_unit_group_index == -1) then {

  // set primary channel frequency
  _freq = _sl_groups select (_sl_unit_group_index + 1);
  [(call TFAR_fnc_activeSwRadio), 1, _freq] call TFAR_fnc_SetChannelFrequency;
  
  // If unit is leader of group, set alternate radio channel to CO/DC channel
  if (_unit == (leader (group _unit))) then {
    [(call TFAR_fnc_activeSwRadio), 2, "100"] call TFAR_fnc_SetChannelFrequency;
    [(call TFAR_fnc_ActiveSWRadio), 2] call TFAR_fnc_setAdditionalSwStereo;
  };
};

if (! _ft_unit_group_index == -1) then {

  // set primary channel frequency
  _freq = _ft_groups select (_ft_unit_group_index + 1);
  [(call TFAR_fnc_activeSwRadio), 1, _freq] call TFAR_fnc_SetChannelFrequency;
  
  // If unit is leader of group, set alternate radio channel to SL channel
  if (_unit == (leader (group _unit))) then {
    [(call TFAR_fnc_activeSwRadio), 2, (round _freq)] call TFAR_fnc_SetChannelFrequency;
    [(call TFAR_fnc_ActiveSWRadio), 2] call TFAR_fnc_setAdditionalSwStereo;
  };
  
};
call TFAR_fnc_sendFrequencyInfo;