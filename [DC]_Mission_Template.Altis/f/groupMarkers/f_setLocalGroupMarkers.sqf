// F3 - Folk Group Markers
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// DECLARE VARIABLES AND FUNCTIONS

private ["_unitfaction"];

// ====================================================================================

// MAKE SURE THE PLAYER INITIALIZES PROPERLY

if (!isDedicated && (isNull player)) then
{
    waitUntil {sleep 0.1; !isNull player};
};

// ====================================================================================

// DETECT PLAYER FACTION
// The following code detects what faction the player's slot belongs to, and stores
// it in the private variable _unitfaction
if(count _this == 0) then
{
	_unitfaction = toLower (faction player);

	// If the unitfaction is different from the 	group leader's faction, the latters faction is used
	if (_unitfaction != toLower (faction (leader group player))) then {_unitfaction = toLower (faction (leader group player))};
}
else
{
	_unitfaction = (_this select 0);
};
// ====================================================================================
switch (_unitfaction) do
{
// ====================================================================================

// MARKERS: BLUFOR > NATO
// Markers seen by players in NATO slots.

	case "blu_f":
	{
		["GrpNATO_D_CO", 0, "D", "ColorBLUFOR"] spawn f_fnc_localGroupMarker;
		
		["GrpNATO_D1_PL", 0, "D1", "ColorRed"] spawn f_fnc_localGroupMarker;

		["GrpNATO_D1_1_SL", 1, "D11", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpNATO_D1_1_A", 1, "D11A", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpNATO_D1_1_B", 1, "D11B", "ColorRed"] spawn f_fnc_localGroupMarker;

		["GrpNATO_D1_2_SL", 1, "D12", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpNATO_D1_2_A", 1, "D12A", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpNATO_D1_2_B", 1, "D12B", "ColorRed"] spawn f_fnc_localGroupMarker;

		["GrpNATO_D1_3_SL", 1, "D13", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpNATO_D1_3_A", 1, "D13A", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpNATO_D1_3_B", 1, "D13B", "ColorRed"] spawn f_fnc_localGroupMarker;

		["GrpNATO_D1_4_SL", 2, "D14", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpNATO_D1_4_A", 2, "D14A", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpNATO_D1_4_B", 2, "D14B", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpNATO_D1_4_C", 2, "D14C", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpNATO_D1_4_D", 2, "D14D", "ColorRed"] spawn f_fnc_localGroupMarker;

		["GrpNATO_H1",  3, "H1", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpNATO_H2",  3, "H2", "ColorGreen"] spawn f_fnc_localGroupMarker;
		
		["GrpNATO_S_PL",  0, "S", "ColorYellow"] spawn f_fnc_localGroupMarker;

 		["GrpNATO_S_IFV1",  4, "SV1", "ColorYellow"] spawn f_fnc_localGroupMarker;
		["GrpNATO_S_IFV2",  4, "SV2", "ColorYellow"] spawn f_fnc_localGroupMarker;
		["GrpNATO_S_IFV3",  4, "SV3", "ColorYellow"] spawn f_fnc_localGroupMarker;
		["GrpNATO_S_IFV4",  4, "SV4", "ColorYellow"] spawn f_fnc_localGroupMarker;

		["GrpNATO_S1",  5, "S1", "ColorYellow"] spawn f_fnc_localGroupMarker;		
		["GrpNATO_S2",  5, "S2", "ColorYellow"] spawn f_fnc_localGroupMarker;
		["GrpNATO_S3",  5, "S3", "ColorYellow"] spawn f_fnc_localGroupMarker;
	
		["GrpNATO_F2_1",  8, "FR21", "ColorKhaki"] spawn f_fnc_localGroupMarker;
		["GrpNATO_F2_2",  8, "FR22", "ColorKhaki"] spawn f_fnc_localGroupMarker;
		
		["GrpNATO_S2_1",  9, "S21", "ColorBlue"] spawn f_fnc_localGroupMarker;
 		["GrpNATO_S2_2",  9, "S22", "ColorBlue"] spawn f_fnc_localGroupMarker;
 		["GrpNATO_S2_3",  9, "S23", "ColorBlue"] spawn f_fnc_localGroupMarker;
 		["GrpNATO_S2_4",  9, "S24", "ColorBlue"] spawn f_fnc_localGroupMarker;
 		["GrpNATO_S2_5",  9, "S25", "ColorBlue"] spawn f_fnc_localGroupMarker;
  		["GrpNATO_S2_6",  9, "S26", "ColorBlue"] spawn f_fnc_localGroupMarker;

 		["GrpNATO_T1",  7, "T1", "ColorBrown"] spawn f_fnc_localGroupMarker;
		["GrpNATO_T2",  7, "T2", "ColorBrown"] spawn f_fnc_localGroupMarker;
		["GrpNATO_T3",  7, "T3", "ColorBrown"] spawn f_fnc_localGroupMarker;
		["GrpNATO_T4",  7, "T4", "ColorBrown"] spawn f_fnc_localGroupMarker;
		
		["UnitNATO_D1PM", 0, "DPLM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitNATO_SPM", 0, "SPLM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitNATO_D1SG", 1, "DPLUAV", "ColorBlack"] spawn f_fnc_localSpecialistMarker;


	};

// ====================================================================================

// MARKERS: OPFOR > CSAT
// Markers seen by players in CSAT slots.

	case "opf_f":
	{
		["GrpCSAT_1_CO", 0, "1-CO", "ColorYellow"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_1_DC", 0, "1-DC", "ColorYellow"] spawn f_fnc_localGroupMarker;

		["GrpCSAT_1_1_SL", 0, "1-1-SL", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_1_1_1", 1, "1-1-1", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_1_1_2", 1, "1-1-2", "ColorRed"] spawn f_fnc_localGroupMarker;

		["GrpCSAT_1_2_SL", 0, "1-2-SL", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_1_2_1", 1, "1-2-1", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_1_2_2", 1, "1-2-2", "ColorBlue"] spawn f_fnc_localGroupMarker;

		["GrpCSAT_1_3_SL", 0, "1-3-SL", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_1_3_1", 1, "1-3-1", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_1_3_2", 1, "1-3-2", "ColorGreen"] spawn f_fnc_localGroupMarker;

		["GrpCSAT_1_4_SL", 0, "1-4-SL", "ColorPink"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_1_4_1", 1, "1-4-1", "ColorPink"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_1_4_2", 1, "1-4-2", "ColorPink"] spawn f_fnc_localGroupMarker;

		["GrpCSAT_MMG1", 2, "MMG1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_HMG1",  2, "HMG1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_MAT1", 3, "MAT1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_HAT1",  3, "HAT1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_MTR1",  5, "MTR1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_MSAM1",  3, "MSAM1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_HSAM1",  3, "HSAM1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_ST1",  4, "ST1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_DT1",  4, "DT1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_ENG1",  6, "ENG1", "ColorOrange"] spawn f_fnc_localGroupMarker;

 		["GrpCSAT_IFV1",  7, "IFV1", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_IFV2",  7, "IFV2", "ColorRed"] spawn f_fnc_localGroupMarker;
 		["GrpCSAT_IFV3",  7, "IFV3", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_IFV4",  7, "IFV4", "ColorBlue"] spawn f_fnc_localGroupMarker;
 		["GrpCSAT_IFV5",  7, "IFV5", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_IFV6",  7, "IFV6", "ColorGreen"] spawn f_fnc_localGroupMarker;
 		["GrpCSAT_IFV7",  7, "IFV7", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_IFV8",  7, "IFV8", "ColorOrange"] spawn f_fnc_localGroupMarker;

 		["GrpCSAT_TNK1",  8, "TNK1", "ColorRed"] spawn f_fnc_localGroupMarker;

		["GrpCSAT_TH1",  9, "TH1", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_TH2",  9, "TH2", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_TH3",  9, "TH3", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_TH4",  9, "TH4", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_TH5",  9, "TH5", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_TH6",  9, "TH6", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_TH7",  9, "TH7", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_TH8",  9, "TH8", "ColorOrange"] spawn f_fnc_localGroupMarker;

		["GrpCSAT_AH1",  9, "AH1", "ColorRed"] spawn f_fnc_localGroupMarker;

		["UnitCSAT_CO_M", 0, "1-CO-M", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitCSAT_DC_M", 0, "1-DC-M", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitCSAT_ASL_M", 0, "1-1-M", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitCSAT_BSL_M", 0, "1-2-M", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitCSAT_CSL_M", 0, "1-3-M", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitCSAT_DSL_M", 0, "1-4-M", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
	};


// ====================================================================================

// MARKERS: INDEPEDENT > AAF
// Markers seen by players in AAF slots.

	case "ind_f":
	{
		["GrpAAF_1_CO", 0, "1-CO", "ColorYellow"] spawn f_fnc_localGroupMarker;
		["GrpAAF_1_DC", 0, "1-DC", "ColorYellow"] spawn f_fnc_localGroupMarker;

		["GrpAAF_1_1_SL", 0, "1-1-SL", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpAAF_1_1_1", 1, "1-1-1", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpAAF_1_1_2", 1, "1-1-2", "ColorRed"] spawn f_fnc_localGroupMarker;

		["GrpAAF_1_2_SL", 0, "1-2-SL", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpAAF_1_2_1", 1, "1-2-1", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpAAF_1_2_2", 1, "1-2-2", "ColorBlue"] spawn f_fnc_localGroupMarker;

		["GrpAAF_1_3_SL", 0, "1-3-SL", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpAAF_1_3_1", 1, "1-3-1", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpAAF_1_3_2", 1, "1-3-2", "ColorGreen"] spawn f_fnc_localGroupMarker;

		["GrpAAF_1_4_SL", 0, "1-4-SL", "ColorPink"] spawn f_fnc_localGroupMarker;
		["GrpAAF_1_4_1", 1, "1-4-1", "ColorPink"] spawn f_fnc_localGroupMarker;
		["GrpAAF_1_4_2", 1, "1-4-2", "ColorPink"] spawn f_fnc_localGroupMarker;

		["GrpAAF_MMG1", 2, "MMG1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpAAF_HMG1",  2, "HMG1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpAAF_MAT1", 3, "MAT1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpAAF_HAT1",  3, "HAT1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpAAF_MTR1",  5, "MTR1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpAAF_MSAM1",  3, "MSAM1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpAAF_HSAM1",  3, "HSAM1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpAAF_ST1",  4, "ST1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpAAF_DT1",  4, "DT1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpAAF_ENG1",  6, "ENG1", "ColorOrange"] spawn f_fnc_localGroupMarker;

 		["GrpAAF_IFV1",  7, "IFV1", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpAAF_IFV2",  7, "IFV2", "ColorRed"] spawn f_fnc_localGroupMarker;
 		["GrpAAF_IFV3",  7, "IFV3", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpAAF_IFV4",  7, "IFV4", "ColorBlue"] spawn f_fnc_localGroupMarker;
 		["GrpAAF_IFV5",  7, "IFV5", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpAAF_IFV6",  7, "IFV6", "ColorGreen"] spawn f_fnc_localGroupMarker;
 		["GrpAAF_IFV7",  7, "IFV7", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpAAF_IFV8",  7, "IFV8", "ColorOrange"] spawn f_fnc_localGroupMarker;

 		["GrpAAF_TNK1",  8, "TNK1", "ColorRed"] spawn f_fnc_localGroupMarker;

		["GrpAAF_TH1",  9, "TH1", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpAAF_TH2",  9, "TH2", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpAAF_TH3",  9, "TH3", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpAAF_TH4",  9, "TH4", "ColorOrange"] spawn f_fnc_localGroupMarker;

		["GrpAAF_AH1",  9, "AH1", "ColorRed"] spawn f_fnc_localGroupMarker;

		["UnitAAF_CO_M", 0, "1-CO-M", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitAAF_DC_M", 0, "1-DC-M", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitAAF_ASL_M", 0, "1-1-M", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitAAF_BSL_M", 0, "1-2-M", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitAAF_CSL_M", 0, "1-3-M", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitAAF_DSL_M", 0, "1-4-M", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
	};
// ====================================================================================

// MARKERS: BLUFOR > FIA
// Markers seen by players in BLUFOR-FIA slots.

	case "blu_g_f":
	{
		["GrpFIA_1_CO", 0, "1-CO", "ColorYellow"] spawn f_fnc_localGroupMarker;
		["GrpFIA_1_DC", 0, "1-DC", "ColorYellow"] spawn f_fnc_localGroupMarker;

		["GrpFIA_1_1_SL", 0, "1-1-SL", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpFIA_1_1_1", 1, "1-1-1", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpFIA_1_1_2", 1, "1-1-2", "ColorRed"] spawn f_fnc_localGroupMarker;

		["GrpFIA_1_2_SL", 0, "1-2-SL", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpFIA_1_2_1", 1, "1-2-1", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpFIA_1_2_2", 1, "1-2-2", "ColorBlue"] spawn f_fnc_localGroupMarker;

		["GrpFIA_1_3_SL", 0, "1-3-SL", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpFIA_1_3_1", 1, "1-3-1", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpFIA_1_3_2", 1, "1-3-2", "ColorGreen"] spawn f_fnc_localGroupMarker;

		["GrpFIA_1_4_SL", 0, "1-4-SL", "ColorPink"] spawn f_fnc_localGroupMarker;
		["GrpFIA_1_4_1", 1, "1-4-1", "ColorPink"] spawn f_fnc_localGroupMarker;
		["GrpFIA_1_4_2", 1, "1-4-2", "ColorPink"] spawn f_fnc_localGroupMarker;

		["GrpFIA_MMG1", 2, "MMG1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpFIA_HMG1",  2, "HMG1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpFIA_MAT1", 3, "MAT1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpFIA_HAT1",  3, "HAT1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpFIA_MTR1",  5, "MTR1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpFIA_MSAM1",  3, "MSAM1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpFIA_HSAM1",  3, "HSAM1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpFIA_ST1",  4, "ST1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpFIA_DT1",  4, "DT1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpFIA_ENG1",  6, "ENG1", "ColorOrange"] spawn f_fnc_localGroupMarker;

 		["GrpFIA_IFV1",  7, "IFV1", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpFIA_IFV2",  7, "IFV2", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpFIA_IFV3",  7, "IFV3", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpFIA_IFV4",  7, "IFV4", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpFIA_IFV5",  7, "IFV5", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpFIA_IFV6",  7, "IFV6", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpFIA_IFV7",  7, "IFV7", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpFIA_IFV8",  7, "IFV8", "ColorOrange"] spawn f_fnc_localGroupMarker;

 		["GrpFIA_TNK1",  8, "TNK1", "ColorRed"] spawn f_fnc_localGroupMarker;

		["GrpFIA_TH1",  9, "TH1", "ColorRed"] spawn f_fnc_localGroupMarker;
 		["GrpFIA_TH2",  9, "TH2", "ColorRed"] spawn f_fnc_localGroupMarker;
 		["GrpFIA_TH3",  9, "TH3", "ColorBlue"] spawn f_fnc_localGroupMarker;
 		["GrpFIA_TH4",  9, "TH4", "ColorBlue"] spawn f_fnc_localGroupMarker;
 		["GrpFIA_TH5",  9, "TH5", "ColorGreen"] spawn f_fnc_localGroupMarker;
  		["GrpFIA_TH6",  9, "TH6", "ColorGreen"] spawn f_fnc_localGroupMarker;
   		["GrpFIA_TH7",  9, "TH7", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpFIA_TH8",  9, "TH8", "ColorOrange"] spawn f_fnc_localGroupMarker;

		["GrpFIA_AH1",  9, "AH1", "ColorRed"] spawn f_fnc_localGroupMarker;

		["UnitFIA_CO_M", 0, "1-CO-M", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitFIA_DC_M", 0, "1-DC-M", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitFIA_ASL_M", 0, "1-1-M", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitFIA_BSL_M", 0, "1-2-M", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitFIA_CSL_M", 0, "1-3-M", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitFIA_DSL_M", 0, "1-4-M", "ColorBlack"] spawn f_fnc_localSpecialistMarker;

	};

// ====================================================================================

// MARKERS: OPFOR > FIA
// Markers seen by players in OPFOR-FIA slots.

	case "opf_g_f":
	{
		["GrpOFIA_CO", 0, "1-CO", "ColorYellow"] spawn f_fnc_localGroupMarker;
		["GrpOFIA_DC", 0, "1-DC", "ColorYellow"] spawn f_fnc_localGroupMarker;

		["GrpOFIA_ASL", 0, "1-1-SL", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpOFIA_A1", 1, "1-1-1", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpOFIA_A2", 1, "1-1-2", "ColorRed"] spawn f_fnc_localGroupMarker;

		["GrpOFIA_BSL", 0, "1-2-SL", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpOFIA_B1", 1, "1-2-1", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpOFIA_B2", 1, "1-2-2", "ColorBlue"] spawn f_fnc_localGroupMarker;

		["GrpOFIA_CSL", 0, "1-3-SL", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpOFIA_C1", 1, "1-3-1", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpOFIA_C2", 1, "1-3-2", "ColorGreen"] spawn f_fnc_localGroupMarker;

		["GrpOFIA_DSL", 0, "1-4-SL", "ColorPink"] spawn f_fnc_localGroupMarker;
		["GrpOFIA_D1", 1, "1-4-1", "ColorPink"] spawn f_fnc_localGroupMarker;
		["GrpOFIA_D2", 1, "1-4-2", "ColorPink"] spawn f_fnc_localGroupMarker;

		["GrpOFIA_MMG1", 2, "MMG1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpOFIA_HMG1",  2, "HMG1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpOFIA_MAT1", 3, "MAT1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpOFIA_HAT1",  3, "HAT1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpOFIA_MTR1",  5, "MTR1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpOFIA_MSAM1",  3, "MSAM1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpOFIA_HSAM1",  3, "HSAM1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpOFIA_ST1",  4, "ST1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpOFIA_DT1",  4, "DT1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpOFIA_ENG1",  6, "ENG1", "ColorOrange"] spawn f_fnc_localGroupMarker;

 		["GrpOFIA_IFV1",  7, "IFV1", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpOFIA_IFV2",  7, "IFV2", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpOFIA_IFV3",  7, "IFV3", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpOFIA_IFV4",  7, "IFV4", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpOFIA_IFV5",  7, "IFV5", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpOFIA_IFV6",  7, "IFV6", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpOFIA_IFV7",  7, "IFV7", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpOFIA_IFV8",  7, "IFV8", "ColorOrange"] spawn f_fnc_localGroupMarker;

 		["GrpOFIA_TNK1",  8, "TNK1", "ColorRed"] spawn f_fnc_localGroupMarker;

		["GrpOFIA_TH1",  9, "TH1", "ColorRed"] spawn f_fnc_localGroupMarker;
 		["GrpOFIA_TH2",  9, "TH2", "ColorRed"] spawn f_fnc_localGroupMarker;
 		["GrpOFIA_TH3",  9, "TH3", "ColorBlue"] spawn f_fnc_localGroupMarker;
 		["GrpOFIA_TH4",  9, "TH4", "ColorBlue"] spawn f_fnc_localGroupMarker;
 		["GrpOFIA_TH5",  9, "TH5", "ColorGreen"] spawn f_fnc_localGroupMarker;
  		["GrpOFIA_TH6",  9, "TH6", "ColorGreen"] spawn f_fnc_localGroupMarker;
   		["GrpOFIA_TH7",  9, "TH7", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpOFIA_TH8",  9, "TH8", "ColorOrange"] spawn f_fnc_localGroupMarker;

		["GrpOFIA_AH1",  9, "AH1", "ColorRed"] spawn f_fnc_localGroupMarker;

		["UnitOFIA_CO_M", 0, "1-CO-M", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitOFIA_DC_M", 0, "1-DC-M", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitOFIA_ASL_M", 0, "1-1-M", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitOFIA_BSL_M", 0, "1-2-M", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitOFIA_CSL_M", 0, "1-3-M", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitOFIA_DSL_M", 0, "1-4-M", "ColorBlack"] spawn f_fnc_localSpecialistMarker;

	};

// ====================================================================================

// MARKERS: INDEPENDENT > FIA
// Markers seen by players in INDEPENDENT-FIA slots.

	case "ind_g_f":
	{
		["GrpIFIA_1_CO", 0, "1-CO", "ColorYellow"] spawn f_fnc_localGroupMarker;
		["GrpIFIA_1_DC", 0, "1-DC", "ColorYellow"] spawn f_fnc_localGroupMarker;

		["GrpIFIA_1_1_SL", 0, "1-1-SL", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpIFIA_1_1_1", 1, "1-1-1", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpIFIA_1_1_2", 1, "1-1-2", "ColorRed"] spawn f_fnc_localGroupMarker;

		["GrpIFIA_1_2_SL", 0, "1-2-SL", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpIFIA_1_2_1", 1, "1-2-1", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpIFIA_1_2_2", 1, "1-2-2", "ColorBlue"] spawn f_fnc_localGroupMarker;

		["GrpIFIA_1_3_SL", 0, "1-3-SL", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpIFIA_1_3_1", 1, "1-3-1", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpIFIA_1_3_2", 1, "1-3-2", "ColorGreen"] spawn f_fnc_localGroupMarker;

		["GrpIFIA_1_4_SL", 0, "1-4-SL", "ColorPink"] spawn f_fnc_localGroupMarker;
		["GrpIFIA_1_4_1", 1, "1-4-1", "ColorPink"] spawn f_fnc_localGroupMarker;
		["GrpIFIA_1_4_2", 1, "1-4-2", "ColorPink"] spawn f_fnc_localGroupMarker;

		["GrpIFIA_MMG1", 2, "MMG1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpIFIA_HMG1",  2, "HMG1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpIFIA_MAT1", 3, "MAT1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpIFIA_HAT1",  3, "HAT1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpIFIA_MTR1",  5, "MTR1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpIFIA_MSAM1",  3, "MSAM1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpIFIA_HSAM1",  3, "HSAM1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpIFIA_ST1",  4, "ST1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpIFIA_DT1",  4, "DT1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpIFIA_ENG1",  6, "ENG1", "ColorOrange"] spawn f_fnc_localGroupMarker;

 		["GrpIFIA_IFV1",  7, "IFV1", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpIFIA_IFV2",  7, "IFV2", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpIFIA_IFV3",  7, "IFV3", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpIFIA_IFV4",  7, "IFV4", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpIFIA_IFV5",  7, "IFV5", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpIFIA_IFV6",  7, "IFV6", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpIFIA_IFV7",  7, "IFV7", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpIFIA_IFV8",  7, "IFV8", "ColorOrange"] spawn f_fnc_localGroupMarker;

 		["GrpIFIA_TNK1",  8, "TNK1", "ColorRed"] spawn f_fnc_localGroupMarker;

		["GrpIFIA_TH1",  9, "TH1", "ColorRed"] spawn f_fnc_localGroupMarker;
 		["GrpIFIA_TH2",  9, "TH2", "ColorRed"] spawn f_fnc_localGroupMarker;
 		["GrpIFIA_TH3",  9, "TH3", "ColorBlue"] spawn f_fnc_localGroupMarker;
 		["GrpIFIA_TH4",  9, "TH4", "ColorBlue"] spawn f_fnc_localGroupMarker;
 		["GrpIFIA_TH5",  9, "TH5", "ColorGreen"] spawn f_fnc_localGroupMarker;
  		["GrpIFIA_TH6",  9, "TH6", "ColorGreen"] spawn f_fnc_localGroupMarker;
   		["GrpIFIA_TH7",  9, "TH7", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpIFIA_TH8",  9, "TH8", "ColorOrange"] spawn f_fnc_localGroupMarker;

		["GrpIFIA_AH1",  9, "AH1", "ColorRed"] spawn f_fnc_localGroupMarker;

		["UnitIFIA_CO_M", 0, "1-CO-M", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitIFIA_DC_M", 0, "1-DC-M", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitIFIA_ASL_M", 0, "1-1-M", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitIFIA_BSL_M", 0, "1-2-M", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitIFIA_CSL_M", 0, "1-3-M", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitIFIA_DSL_M", 0, "1-4-M", "ColorBlack"] spawn f_fnc_localSpecialistMarker;

	};

};

// ====================================================================================


