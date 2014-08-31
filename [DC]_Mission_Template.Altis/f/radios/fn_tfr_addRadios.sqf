// F3 - Add TFR Radios Function
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// DECLARE VARIABLES

private["_unit", "_typeOfUnit", "_longRange","_radio1","_radio2","_radio3", "_backpackItems", "_sl_groups", "_sl_unit_group_index", "_ft_groups", "_ft_unit_group_index", "_unit_group", "_freq"];

_unit = player;

_typeOfUnit = _unit getVariable ["f_var_assignGear", "NIL"];

// DEFINE THE RADIOS THAT WILL BE USED

switch ((side player)) do { //longrange, shortrange, rifradio
    case (west): {
      _radio1 = TF_defaultWestBackpack;
      _radio2 = TF_defaultWestPersonalRadio;
      _radio3 = TF_defaultWestRiflemanRadio;};
    case (east): {
      _radio1 = TF_defaultEastBackpack;
      _radio2 = TF_defaultEastPersonalRadio;
      _radio3 = TF_defaultEastRiflemanRadio;};
    default {
      _radio1 = TF_defaultGuerBackpack;
      _radio2 = TF_defaultGuerPersonalRadio;
      _radio3 = TF_defaultGuerRiflemanRadio;};
};

// ====================================================================================

// ASSIGN RADIOS TO UNITS
// Depending on the loadout used in the assignGear component, each unit is assigned
// a set of radios.

if(_typeOfUnit != "NIL") then {

  // If radios are enabled in the settings
  if(!f_radios_settings_tfr_disableRadios) then {


      // Set the list of units that get a rifleman's radio
      _rifradio = ["ar","aar","rat","samag","mmgag","hmgag","matag","hatag","mtrag","sp","r","car","smg","gren"];

      // Set the list of units that get a shortrange radio
      _shortrange = ["co", "dc", "ftl", "m", "samg", "mmgg", "matg", "sn", "mtrg"];

      // Give out respective radios

      if (_typeOfUnit in _rifradio) then {
        _unit linkItem _radio3;
      } else {
        if (_typeOfUnit in _shortrange) then {
          _unit linkItem _radio2;
        };
      };

      // Special cases
      _specialist = ["vc", "pp", "eng", "engm", "div","uav"];

      // If unit is leader of group and in the above list, give SR. Else, give them
      // a rifleman's radio.

      if (_typeOfUnit in _specialist) then {
        if (_unit == (leader (group _unit))) then {
          _unit linkItem _radio2;
        } else {
          _unit linkItem _radio3;
        };
      };

      // Give out LR backpacks according to f\radios\tfr_settings.sqf.
      if(f_radios_settings_tfr_defaultLRBackpacks) then {
        if (_unit == (leader (group _unit))) then {
          _backpackItems = backpackItems player;
          removeBackpack _unit;
          _unit addBackpack _radio1;
          {player addItemToBackpack _x;} forEach _backpackItems;
        };
      } else {
        // If unit is in the list of units that receive a long-range radio, do so.
        if(_typeOfUnit in f_radios_settings_tfr_backpackRadios) then {
          _backpackItems = backpackItems player;
          removeBackpack _unit;
          _unit addBackpack _radio1;
          {player addItemToBackpack _x;} forEach _backpackItems;
        };
      };
      
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
        [(call TFAR_fnc_activeSwRadio), 0, _freq] call TFAR_fnc_SetChannelFrequency;
        
        // If unit is leader of group, set alternate radio channel to CO/DC channel
        if (_unit == (leader (group _unit))) then {
          [(call TFAR_fnc_activeSwRadio), 1, "100"] call TFAR_fnc_SetChannelFrequency;
          [(call TFAR_fnc_ActiveSWRadio), 1] call TFAR_fnc_setAdditionalSwStereo;
        };
      };

      if (! _ft_unit_group_index == -1) then {

        // set primary channel frequency
        _freq = _ft_groups select (_ft_unit_group_index + 1);
        [(call TFAR_fnc_activeSwRadio), 0, _freq] call TFAR_fnc_SetChannelFrequency;
        
        // If unit is leader of group, set alternate radio channel to SL channel
        if (_unit == (leader (group _unit))) then {
          [(call TFAR_fnc_activeSwRadio), 1, (round _freq)] call TFAR_fnc_SetChannelFrequency;
          [(call TFAR_fnc_ActiveSWRadio), 1] call TFAR_fnc_setAdditionalSwStereo;
        };
        
      };


  } else {

    // Do not assign any radios

  };

};

// ====================================================================================
