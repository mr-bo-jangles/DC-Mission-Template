// DC - AI Framework initialisation
// ====================================================================================

// RUN RELEVANT SCRIPTS, DEPENDING ON SYSTEM IN USE
// Each AI modification requires a different set of scripts to be used, and so we
// split into a seperate script file for initialisation of each mod, on both the
// server and client.

// Wait for parameter to be initialised
waitUntil{!isNil "dc_param_ai"};

// If any AI system selected
if(dc_param_ai != 0) then {

  switch (dc_param_ai) do {
  // VCOM
  case 1: {
    [] execVM "dc\ai\VCOMAI\init.sqf";
  };

  // DAC
  case 2: {
    DAC_Basic_Value = 0;
    [] execVM "dc\ai\DAC\DAC_Config_Creator.sqf";
  };
  // bCombat
  case 3: {
    [] execVM "dc\ai\bCombat\init.sqf";
  };

  };
};

// ====================================================================================
