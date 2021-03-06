/*
| Author: 
|
|	Pfc.Christiansen
|_____
|
|   Description: Adds VA to boxes in spawn when Gamenight Mode is turned OFF
|	
|	Created: 1.December 2014
|	Last modified: 8/15/2015
|	Made for AhoyWorld.
*/
["AmmoboxInit",[kBox,true,{true}]] call BIS_fnc_arsenal;
[kBox,[true],true] call BIS_fnc_removeVirtualItemCargo;
[kBox,[
//ACE

"ACE_fieldDressing",
"ACE_elasticBandage",
"ACE_tourniquet",
"ACE_morphine",
"ACE_atropine",
"ACE_epinephrine",
"ACE_quikclot",
"ACE_personalAidKit",
"ACE_surgicalKit",
"ACE_bodyBag",
"ACE_SpareBarrel",
"ACE_Sandbag_empty",
"ACE_EarPlugs",
"ACE_Kestrel4500",
"ACE_Clacker",
"ACE_M26_Clacker",
"ACE_plasmaIV_250",
"ACE_plasmaIV_500",
"ACE_plasmaIV",
"ACE_bloodIV_250",
"ACE_bloodIV_500",
"ACE_bloodIV",
"ACE_salineIV_250",
"ACE_salineIV_500",
"ACE_salineIV",
"ACE_CableTie",
"ACE_IR_Strobe_Item",
"ACE_MapTools",
"ACE_HuntIR_monitor",
"ACE_DAGR",
"ACE_Tripod",
"ACE_SpottingScope",
"ACE_DAGR",
"ACE_microDAGR",
"ACE_RangeTable_82mm",
"ACE_SpottingScope",
"ACE_Tripod",
"ACE_ATragMX",
"ACE_CableTie",
"ACE_DefusalKit",
"ACE_DeadManSwitch",
"ACE_RangeCard",
"ACE_wirecutter",
"ACE_MX2A",
"ACE_Vector",
"ACE_Yardage450",

//Items and Optics

"ItemWatch",
"ItemCompass",
"ItemGPS",
"ItemMap",
"muzzle_snds_L",
"acc_pointer_IR",
"acc_flashlight",
"RH_muzzle_snds_L",
"RH_osprey",
"RH_docter",
"RH_gemtech9",
"RH_gemtech45",
"RH_m9qd",
"RH_aacusp",
"RH_matchsd",
"RH_pmsd",
"RH_suppr9",
"RH_muzisd",
"RH_tecsd",
"RH_sfn57",
"RH_acc_flashlight",
"RH_M6X",
"RH_A26",
"RH_X2",
"RH_X300",
"RH_Deflash",
"RH_pmIR",
"RH_vp70stock",
"RH_demz",
"optic_Yorris",
"ToolKit",
"RH_fhusp",
"muzzle_snds_H",
"muzzle_snds_M",
"muzzle_snds_B",
"muzzle_snds_H_MG",
"muzzle_snds_H_SW",
"optic_Arco",
"optic_Hamr",
"optic_Aco",
"optic_ACO_grn",
"optic_Aco_smg",
"optic_ACO_grn_smg",
"optic_Holosight",
"optic_Holosight_smg",
"optic_SOS",
"optic_MRCO",
"muzzle_snds_acp",
"optic_DMS",
"optic_NVS",
"optic_MRD",
"optic_LRPS",
"muzzle_snds_338_black",
"muzzle_snds_338_green",
"muzzle_snds_338_sand",
"bipod_01_F_snd",
"rhs_bipod",
"muzzle_snds_93mmg",
"muzzle_snds_93mmg_tan",
"optic_AMS",
"optic_AMS_khk",
"optic_AMS_snd",
"optic_KHS_blk",
"optic_KHS_hex",
"optic_KHS_old",
"optic_KHS_tan",
"bipod_01_F_blk",
"kio_Elcan",
"bipod_01_F_mtp",
"bipod_02_F_blk",
"bipod_02_F_tan",
"bipod_02_F_hex",
"bipod_03_F_blk",
"bipod_03_F_oli",
"kio_Elcan_reflex",
"kio_muzzle_sffh",
"kio_muzzle_bfa",
"kio_LLM",
"rhs_acc_tgpa",
"rhs_acc_pbs1",
"rhs_acc_tgpv",
"rhs_acc_dtk4short",
"rhs_acc_dtk4long",
"rhs_acc_dtk4screws",
"rhs_acc_dtk3",
"rhs_acc_dtk1",
"rhs_acc_dtk",
"rhs_acc_dtk1l",
"rhs_acc_ak5",
"rhs_acc_1p29",
"rhs_acc_1p78",
"rhsusf_acc_harris_bipod",
"rhsusf_acc_anpeq15A",
"rhsusf_acc_anpeq15",
"rhsusf_acc_anpeq15_light",
"rhsusf_acc_anpeq15side",
"rhsusf_acc_M2010S",
"rhsusf_acc_SR25S",
"rhsusf_acc_rotex5_grey",
"rhsusf_acc_rotex5_tan",
"rhsusf_acc_nt4_black",
"rhsusf_acc_nt4_tan",
"rhsusf_acc_SF3P556",
"rhsusf_acc_SFMB556",
"rhsusf_acc_compm4",
"rhsusf_acc_eotech_552",
"rhsusf_acc_LEUPOLDMK4",
"rhsusf_acc_ELCAN",
"rhsusf_acc_ELCAN_pip",
"rhsusf_acc_ACOG",
"rhsusf_acc_ACOG_pip",
"rhsusf_acc_ACOG2",
"rhsusf_acc_ACOG3",
"rhsusf_acc_ACOG_USMC",
"rhsusf_acc_ACOG2_USMC",
"rhsusf_acc_ACOG3_USMC",
"rhsusf_acc_LEUPOLDMK4_2",
"rhsusf_acc_EOTECH",
"SMA_eotech552",
"SMA_eotech552_kf",
"SMA_eotech552_kf_des",
"SMA_eotech552_kf_wdl",
"SMA_eotech552_3XDOWN",
"SMA_eotech552_3XDOWN_wdl",
"SMA_eotech552_3XDOWN_des",
"hlc_optic_suit",
"hlc_optic_PVS4FAL",
"hlc_muzzle_snds_fal",
"hlc_muzzle_snds_g3",
"hlc_muzzle_snds_HK33",
"HLC_Optic_ZFSG1",
"hlc_optic_accupoint_g3",
"hlc_optic_PVS4G3",
"hlc_muzzle_Agendasix",
"hlc_muzzle_Tundra",
"hlc_muzzle_Agendasix10mm",
"SMA_ANPEQ15_TAN",
"SMA_ANPEQ15_TOP_TAN",
"SMA_ANPEQ15_BLK",
"SMA_ANPEQ15_TOP_BLK",
"SMA_ANPEQ15_TOP_TAN_MK18",
"SMA_ANPEQ15_TOP_BLK_MK18",
"SMA_ANPEQ15_TOP_TAN_SCAR",
"SMA_ANPEQ15_TOP_BLK_SCAR",
"SMA_Spitfire_01_sc_black",
"SMA_Spitfire_01_black",
"SMA_AIMPOINT",
"SMA_AIMPOINT_GLARE",
"SMA_ELCAN_SPECTER",
"SMA_ELCAN_SPECTER_TAN",
"SMA_Silencer_556",
"SMA_supp1b_556",
"SMA_supp1tan_556",
"SMA_supp2b_556",
"SMA_supp2btan_556",
"SMA_supp_762",
"SMA_supptan_762",
"SMA_spSCAR_762",
"SMA_spSCARtan_762",
"SMA_supp2bSCAR_556",
"SMA_supp2btanSCAR_556",
"tf47_optic_m3maaws",
"ACE_muzzle_mzls_H",
"ACE_muzzle_mzls_B",
"ACE_muzzle_mzls_L",
"ACE_muzzle_mzls_smg_01",
"ACE_muzzle_mzls_smg_02",
"ACE_muzzle_mzls_338",
"ACE_muzzle_mzls_93mmg",
"ACE_acc_pointer_green",
"ACE_optic_Hamr_2D",
"ACE_optic_Hamr_PIP",
"ACE_optic_Arco_2D",
"ACE_optic_Arco_PIP",
"ACE_optic_MRCO_2D",
"ACE_optic_SOS_2D",
"ACE_optic_SOS_PIP",
"ACE_optic_LRPS_2D",
"ACE_optic_LRPS_PIP",
"tf_anprc152_2",
"tf_rf7800str_1",
"ACE_NVG_Gen4",
"ACE_NVG_Wide",
"NVGoggles_OPFOR",
"NVGoggles_INDEP",
"NVGoggles",
"rhsusf_ANPVS_14",
"rhsusf_ANPVS_15",

//Uniforms

"rhs_uniform_cu_ocp",
"rhs_uniform_cu_ucp",
"U_B_CTRG_3",
"U_B_Wetsuit",
"rhs_uniform_FROG01_m81",
"rhs_uniform_FROG01_d",
"rhs_uniform_FROG01_wd",
"U_B_FullGhillie_ard",
"U_B_FullGhillie_lsh",
"U_B_FullGhillie_sard",
"U_B_GhillieSuit",
"U_B_HeliPilotCoveralls",
"U_B_PilotCoveralls",
"U_B_CombatUniform_mcam_vest",
"U_B_survival_uniform",
"TRYK_U_B_wh_tan_Rollup_CombatUniform",	
"TRYK_U_B_NATO_UCP_GRY_CombatUniform",
"TRYK_U_B_NATO_UCP_GRY_R_CombatUniform",
"TRYK_U_B_NATO_UCP_CombatUniform",
"TRYK_U_B_NATO_UCP_R_CombatUniform",
"TRYK_U_B_NATO_OCP_c_BLK_CombatUniform",
"TRYK_U_B_NATO_OCP_BLK_c_R_CombatUniform",
"TRYK_U_B_NATO_OCP_BLK_CombatUniform",
"TRYK_U_B_NATO_OCP_BLK_R_CombatUniform",
"TRYK_U_B_NATO_OCPD_CombatUniform",
"TRYK_U_B_NATO_OCPD_R_CombatUniform",
"TRYK_U_B_NATO_OCP_CombatUniform",
"TRYK_U_B_NATO_OCP_R_CombatUniform",
"TRYK_U_B_MTP_R_CombatUniform",
"TRYK_U_B_MTP_BLK_CombatUniform",
"TRYK_U_B_MTP_BLK_R_CombatUniform",
"TRYK_U_B_Woodland",
"TRYK_U_B_Woodland_Tshirt",
"TRYK_U_B_WDL_GRY_CombatUniform",
"TRYK_U_B_WDL_GRY_R_CombatUniform",
"TRYK_U_B_ARO1_GR_R_CombatUniform",
"TRYK_U_B_ARO1_GRY_R_CombatUniform",
"TRYK_U_B_ARO1_CombatUniform",
"TRYK_U_B_ARO1R_CombatUniform",
"TRYK_U_B_ARO1_BLK_CombatUniform",
"TRYK_U_B_ARO1_BLK_R_CombatUniform",
"TRYK_U_B_ARO1_CBR_CombatUniform",
"TRYK_U_B_ARO1_CBR_R_CombatUniform",
"TRYK_U_B_ARO2_CombatUniform",
"TRYK_U_B_ARO2R_CombatUniform",
"TRYK_U_B_AOR2_BLK_CombatUniform",
"TRYK_U_B_AOR2_BLK_R_CombatUniform",
"TRYK_U_B_AOR2_OD_CombatUniform",
"TRYK_U_B_AOR2_OD_R_CombatUniform",
"TRYK_U_B_AOR2_GRY_CombatUniform",
"TRYK_U_B_AOR2_GRY_R_CombatUniform",
"TRYK_U_B_BLK_T_WH",
"TRYK_U_B_BLK_T_BK",
"TRYK_U_B_RED_T_BR",
"TRYK_U_B_BLK_T_BG_WH",
"TRYK_U_pad_j",
"TRYK_U_pad_j_blk",
"TRYK_T_camo_tan",
"TRYK_T_camo_3c",
"TRYK_T_camo_Wood",
"TRYK_T_camo_wood_marpat",
"TRYK_T_camo_Desert_marpat",
"TRYK_T_camo_3c_BG",
"TRYK_T_camo_Wood_BG",
"TRYK_T_camo_wood_marpat_BG",
"TRYK_T_camo_desert_marpat_BG",
"TRYK_T_PAD",
"TRYK_T_OD_PAD",
"TRYK_T_TAN_PAD",
"TRYK_T_BLK_PAD",
"TRYK_T_T2_PAD",
"TRYK_U_B_PCUHs",
"TRYK_U_B_PCUGHs",
"TRYK_U_B_PCUODHs",
"TRYK_B_USMC_R",
"TRYK_B_USMC_R_ROLL",
"TRYK_B_TRYK_UCP_T",
"TRYK_B_TRYK_3C_T",
"TRYK_B_TRYK_MTP_T",
"TRYK_B_TRYK_OCP_T",
"TRYK_B_TRYK_OCP_D_T",
"TRYK_DMARPAT_T",
"TRYK_C_AOR2_T",
"TRYK_U_B_Sage_T",
"TRYK_U_B_Wood_T",
"TRYK_U_B_BLTAN_T",
"TRYK_U_B_BLOD_T",
"TRYK_OVERALL_flesh",
"TRYK_OVERALL_nok_flesh",
"TRYK_OVERALL_SAGE_BLKboots",
"TRYK_OVERALL_SAGE_BLKboots_nk_blk",
"TRYK_OVERALL_SAGE_BLKboots_nk",
"TRYK_OVERALL_SAGE_BLKboots_nk_blk2",
"TRYK_OVERALL_SAGE",

//FUCK THE TRYK GUY

"TRYK_U_B_OD_OD_CombatUniform",
"TRYK_U_B_OD_OD_R_CombatUniform",
"TRYK_U_B_TANTAN_CombatUniform",
"TRYK_U_B_TANTAN_R_CombatUniform",
"TRYK_U_B_GRYOCP_CombatUniform",
"TRYK_U_B_GRYOCP_R_CombatUniformTshirt",
"TRYK_U_B_TANOCP_CombatUniform",
"TRYK_U_B_TANOCP_R_CombatUniformTshirt",
"TRYK_U_B_BLKOCP_CombatUniform",
"TRYK_U_B_BLKOCP_R_CombatUniformTshirt",
"TRYK_U_B_BLKTAN_CombatUniform",
"TRYK_U_B_BLKTANR_CombatUniformTshirt",
"TRYK_U_B_ODTAN_CombatUniform",
"TRYK_U_B_ODTANR_CombatUniformTshirt",
"TRYK_U_B_GRTAN_CombatUniform",
"TRYK_U_B_GRTANR_CombatUniformTshirt",
"TRYK_U_B_wood_CombatUniform",
"TRYK_U_B_woodR_CombatUniformTshirt",
"TRYK_U_B_wood3c_CombatUniform",
"TRYK_U_B_wood3c_CombatUniformTshirt",
"TRYK_U_B_MARPAT_WOOD_CombatUniform",
"TRYK_U_B_MARPAT_WOOD_CombatUniformTshirt",
"TRYK_U_B_WOOD_MARPAT_CombatUniform",
"TRYK_U_B_WOOD_MARPAT_CombatUniformTshirt",
"TRYK_U_B_woodtan_CombatUniform",
"TRYK_U_B_woodtanR_CombatUniformTshirt",
"TRYK_U_B_3CD_Delta_BDU",
"TRYK_U_B_3CD_Delta_BDUTshirt",
"TRYK_U_B_3CD_Ranger_BDU",
"TRYK_U_B_3CD_Ranger_BDUTshirt",
"TRYK_U_B_3CD_BLK_BDUTshirt",
"TRYK_U_B_3CD_BLK_BDUTshirt2",
"TRYK_U_B_ACU",
"TRYK_U_B_ACUTshirt",
"TRYK_U_B_MARPAT_Wood",
"TRYK_U_B_MARPAT_Wood_Tshirt",
"TRYK_U_B_MARPAT_Desert",
"TRYK_U_B_MARPAT_Desert_Tshirt",
"TRYK_U_B_MARPAT_Desert2",
"TRYK_U_B_MARPAT_Desert2_Tshirt",
"TRYK_U_B_3c",
"TRYK_U_B_3cr",
"TRYK_U_B_OD_BLK",
"TRYK_U_B_OD_BLK_2",
"TRYK_U_B_BLK_TAN_1",
"TRYK_U_B_BLK_TAN_2",

//TRYK GUY U KNOW WHAT U DID BRAH

"TRYK_HRP_UCP",
"TRYK_HRP_USMC",
"TRYK_HRP_khk",

//Helmets

"rhsusf_lwh_helmet_marpatwd",
"rhsusf_Bowman",
"rhsusf_bowman_cap",
"rhsusf_lwh_helmet_marpatd",
"rhsusf_mich_bare_norotos_arc_alt_semi_headset",
"rhsusf_mich_bare_norotos_arc_alt_semi",
"rhsusf_mich_bare_norotos_arc_semi_headset",
"rhsusf_mich_bare_norotos_arc_semi",
"rhsusf_mich_bare_norotos_alt_semi_headset",
"rhsusf_mich_bare_norotos_alt_semi",
"rhsusf_mich_bare_norotos_semi_headset",
"rhsusf_mich_bare_norotos_semi",
"rhsusf_mich_bare_alt_semi",
"rhsusf_mich_bare_semi_headset",
"rhsusf_mich_bare_semi",
"rhsusf_mich_bare_norotos_arc_alt_tan_headset",
"rhsusf_mich_bare_norotos_arc_alt_tan",
"rhsusf_mich_bare_norotos_arc_tan_headset",
"rhsusf_mich_bare_norotos_arc_tan",
"rhsusf_mich_bare_norotos_alt_tan_headset",
"rhsusf_mich_bare_norotos_alt_tan",
"rhsusf_mich_bare_norotos_tan_headset",
"rhsusf_mich_bare_norotos_tan",
"rhsusf_mich_bare_alt_tan",
"rhsusf_mich_bare_tan_headset",
"rhsusf_mich_bare_tan",
"rhsusf_mich_bare_norotos_arc_alt_headset",
"rhsusf_mich_bare_norotos_arc_alt",
"rhsusf_mich_bare_norotos_arc_headset",
"rhsusf_mich_bare_norotos_arc",
"rhsusf_mich_bare_norotos_alt_headset",
"rhsusf_mich_bare_norotos_alt",
"rhsusf_mich_bare_norotos_headset",
"rhsusf_mich_bare_norotos",
"rhsusf_mich_bare_alt",
"rhsusf_mich_bare_tan",
"rhsusf_mich_bare_norotos_arc_alt_headset",
"rhsusf_mich_bare_norotos_arc_alt",
"rhsusf_mich_bare_norotos_arc_headset",
"rhsusf_mich_bare_norotos_arc",
"rhsusf_mich_bare_norotos_alt_headset",
"rhsusf_mich_bare_norotos_alt",
"rhsusf_mich_bare_norotos_headset",
"rhsusf_mich_bare_norotos",
"rhsusf_mich_bare_alt",
"rhsusf_ach_bare_semi",
"rhsusf_ach_bare_des_headset_ess",
"rhsusf_ach_bare_des_headset",
"rhsusf_ach_bare_des_ess",
"rhsusf_ach_bare_des",
"rhsusf_ach_bare_wood_headset_ess",
"rhsusf_ach_bare_wood_headset",
"rhsusf_ach_bare_wood_ess",
"rhsusf_ach_bare_wood",
"rhsusf_ach_bare_tan_headset_ess",
"rhsusf_ach_bare_tan_headset",
"rhsusf_ach_bare_tan_ess",
"rhsusf_ach_bare_tan",
"rhsusf_ach_bare_headset_ess",
"rhsusf_ach_bare_headset",
"rhsusf_ach_bare_ess",
"rhsusf_ach_bare",
"rhsusf_ach_helmet_headset_ess_ucp",
"rhsusf_ach_helmet_headset_ess_ocp",
"rhsusf_ach_helmet_ESS_ucp",
"rhsusf_ach_helmet_ESS_ocp",
"rhsusf_ach_helmet_headset_ucp",
"rhsusf_ach_helmet_headset_ocp",
"rhsusf_ach_helmet_camo_ocp",
"rhsusf_ach_helmet_M81",
"rhsusf_ach_helmet_ucp",
"rhsusf_ach_helmet_ocp",
"rhs_Booniehat_m81",
"rhs_Booniehat_marpatwd",
"rhs_Booniehat_marpatd",
"rhs_Booniehat_ucp",
"rhs_Booniehat_ocp",
"rhsusf_patrolcap_ucp",
"rhsusf_patrolcap_ocp",

//Vanilla Helmets

"H_HelmetB",
"H_HelmetB_camo",
"H_HelmetB_paint",
"H_HelmetB_light",
"H_Booniehat_khk",
"H_Booniehat_oli",
"H_Booniehat_indp",
"H_Booniehat_mcamo",
"H_Booniehat_grn",
"H_Booniehat_tan",
"H_Booniehat_dirty",
"H_Booniehat_dgtl",
"H_Booniehat_khk_hs",
"H_HelmetB_plain_mcamo",
"H_HelmetB_grass",
"H_HelmetB_snakeskin",
"H_HelmetB_desert",
"H_HelmetB_black",
"H_HelmetB_sand",
"H_Cap_headphones",
"H_Cap_tan",
"H_Cap_blk",
"H_Cap_tan_specops_US",
"H_Cap_khaki_specops_UK",
"H_Cap_oli_hs",
"H_Cap_usblack",
"H_HelmetCrew_B",
"H_PilotHelmetFighter_B",
"H_PilotHelmetHeli_B",
"H_PilotHelmetHeli_O",
"H_CrewHelmetHeli_B",
"H_CrewHelmetHeli_O",
"H_HelmetB_light_grass",
"H_HelmetB_light_snakeskin",
"H_HelmetB_light_desert",
"H_HelmetB_light_black",
"H_HelmetB_light_sand",
"H_Beret_Colonel",
"H_Beret_02",
"H_Watchcap_blk",
"H_Watchcap_khk",
"H_Watchcap_camo",

//TRYK Helmets

"TRYK_H_Helmet_JSDF",
"TRYK_H_Helmet_CC",
"TRYK_H_Helmet_WOOD",
"TRYK_H_Helmet_ACU",
"TRYK_H_Helmet_MARPAT_Wood",
"TRYK_H_Helmet_MARPAT_Desert",
"TRYK_H_Helmet_MARPAT_Desert2",
"TRYK_H_Helmet_3C",
"TRYK_H_Booniehat_JSDF",
"TRYK_H_Booniehat_3CD",
"TRYK_H_Booniehat_CC",
"TRYK_H_Booniehat_WOOD",
"TRYK_H_Booniehat_MARPAT_WOOD",
"TRYK_H_Booniehat_MARPAT_Desert",
"TRYK_H_Booniehat_AOR1",
"TRYK_H_Booniehat_AOR2",
"TRYK_H_PASGT_BLK",
"TRYK_H_PASGT_OD",
"TRYK_H_PASGT_COYO",
"TRYK_H_PASGT_TAN",
"TRYK_H_WH",
"TRYK_H_GR",
"TRYK_H_AOR1",
"TRYK_H_AOR2",
"TRYK_H_DELTAHELM_NV",
"TRYK_H_EARMUFF",
"TRYK_H_TACEARMUFF_H",
"TRYK_H_Bandana_H",
"TRYK_H_Bandana_wig",
"TRYK_H_Bandana_wig_g",
"TRYK_H_wig",
"TRYK_H_headset2",
"TRYK_H_ghillie_over",
"TRYK_H_ghillie_top",
"TRYK_H_ghillie_top_headless",
"TRYK_H_ghillie_over_green",
"TRYK_H_ghillie_top_green",
"TRYK_H_ghillie_top_headless_green",
"TRYK_H_woolhat",
"TRYK_H_woolhat_CW",
"TRYK_H_woolhat_WH",
"TRYK_H_woolhat_br",
"TRYK_H_woolhat_cu",
"TRYK_H_woolhat_tan",
"TRYK_H_headsetcap",
"TRYK_H_headsetcap_blk",
"TRYK_H_headsetcap_od",
"TRYK_H_pakol",
"TRYK_H_pakol2",
"TRYK_H_LHS_HEL_G",
"TRYK_H_ghillie_top_headless3",

//GLASSES

"TRYK_Beard",
"TRYK_Beard_BW",
"TRYK_Beard_BK",
"TRYK_Beard_Gr",
"TRYK_Beard2",
"TRYK_Beard_BW2",
"TRYK_Beard_BK2",
"TRYK_Beard_Gr2",
"TRYK_Beard3",
"TRYK_Beard_BW3",
"TRYK_Beard_BK3",
"TRYK_Beard_Gr3",
"TRYK_Beard4",
"TRYK_Beard_BW4",
"TRYK_Beard_BK4",
"TRYK_Beard_Gr4",
"TRYK_H_ghillie_top_headless3glass",
"TRYK_shoulder_armor_BK",
"TRYK_shoulder_armor_OD",
"TRYK_shoulder_armor_CY",

//RHS + BIS Vests

"V_PlateCarrierGL_blk",
"V_PlateCarrierGL_mtp",
"V_PlateCarrierSpec_blk",
"V_PlateCarrierSpec_mtp",
"V_PlateCarrierIAGL_oli",
"V_PlateCarrier1_rgr",
"V_PlateCarrier2_rgr",
"V_PlateCarrier3_rgr",
"V_PlateCarrierGL_rgr",
"V_PlateCarrier1_blk",
"V_PlateCarrierSpec_rgr",
"V_Chestrig_khk",
"V_Chestrig_rgr",
"V_Chestrig_blk",
"V_Chestrig_oli",
"V_TacVest_khk",
"V_TacVest_brn",
"V_TacVest_oli",
"V_TacVest_blk",
"V_TacVest_camo",
"V_TacVest_blk_POLICE",
"V_TacVestIR_blk",
"V_TacVestCamo_khk",
"V_HarnessO_brn",
"V_HarnessOGL_brn",
"V_HarnessO_gry",
"V_HarnessOGL_gry",
"V_HarnessOSpec_brn",
"V_HarnessOSpec_gry",
"V_PlateCarrierIA1_dgtl",
"V_PlateCarrierIA2_dgtl",
"V_PlateCarrierIAGL_dgtl",
"V_RebreatherB",
"V_PlateCarrier_Kerry",
"V_PlateCarrierL_CTRG",
"V_PlateCarrierH_CTRG",
"rhsusf_iotv_ocp_Grenadier",
"rhsusf_iotv_ucp_Grenadier",
"rhsusf_iotv_ocp_Medic",
"rhsusf_iotv_ucp_Medic",
"rhsusf_iotv_ocp_Repair",
"rhsusf_iotv_ucp_Repair",
"rhsusf_iotv_ocp_Rifleman",
"rhsusf_iotv_ucp_Rifleman",
"rhsusf_iotv_ocp_SAW",
"rhsusf_iotv_ucp_SAW",
"rhsusf_iotv_ocp_Squadleader",
"rhsusf_iotv_ucp_Squadleader",
"rhsusf_iotv_ocp_Teamleader",
"rhsusf_iotv_ucp_Teamleader",

//TRYK VESTS, FUCK THE TRYK GUY AGAIN

"TRYK_Hrp_vest_ucp",
"TRYK_Hrp_vest_od",
"TRYK_LOC_AK_chestrig_OD",
"TRYK_LOC_AK_chestrig_TAN",
"TRYK_V_tacv1M_BK",
"TRYK_V_tacv1MLC_BK",
"TRYK_V_tacv1",
"TRYK_V_tacv1_CY",
"TRYK_V_tacv1_BK",
"TRYK_V_tacv1LC_BK",
"TRYK_V_tacv1LC_CY",
"TRYK_V_tacv1LC_OD",
"TRYK_V_ArmorVest_HRT_B",
"TRYK_V_ArmorVest_HRT_OD",
"TRYK_V_ArmorVest_HRT2_B",
"TRYK_V_ArmorVest_HRT2_OD",
"TRYK_V_tacv10_BK",
"TRYK_V_tacv10_OD",
"TRYK_V_tacv10_TN",
"TRYK_V_tacv10LC_BK",
"TRYK_V_tacv10LC_OD",
"TRYK_V_tacv10LC_TN",
"TRYK_V_tacv1L_BK",
"TRYK_V_tacv1L_OD",
"TRYK_V_tacv1L_CY",
"TRYK_V_tacSVD_BK",
"TRYK_V_tacSVD_OD"],true] call BIS_fnc_addVirtualItemCargo;





















["AmmoboxInit",[kBox_1,true,{true}]] call BIS_fnc_arsenal;
[kBox_1,[true],true] call BIS_fnc_removeVirtualItemCargo;
[kBox_1,[
//ACE

"ACE_fieldDressing",
"ACE_elasticBandage",
"ACE_tourniquet",
"ACE_morphine",
"ACE_atropine",
"ACE_epinephrine",
"ACE_quikclot",
"ACE_personalAidKit",
"ACE_surgicalKit",
"ACE_bodyBag",
"ACE_SpareBarrel",
"ACE_Sandbag_empty",
"ACE_EarPlugs",
"ACE_Kestrel4500",
"ACE_Clacker",
"ACE_M26_Clacker",
"ACE_plasmaIV_250",
"ACE_plasmaIV_500",
"ACE_plasmaIV",
"ACE_bloodIV_250",
"ACE_bloodIV_500",
"ACE_bloodIV",
"ACE_salineIV_250",
"ACE_salineIV_500",
"ACE_salineIV",
"ACE_CableTie",
"ACE_IR_Strobe_Item",
"ACE_MapTools",
"ACE_HuntIR_monitor",
"ACE_DAGR",
"ACE_Tripod",
"ACE_SpottingScope",
"ACE_DAGR",
"ACE_microDAGR",
"ACE_RangeTable_82mm",
"ACE_SpottingScope",
"ACE_Tripod",
"ACE_ATragMX",
"ACE_CableTie",
"ACE_DefusalKit",
"ACE_DeadManSwitch",
"ACE_RangeCard",
"ACE_wirecutter",
"ACE_MX2A",
"ACE_Vector",
"ACE_Yardage450",

//Items and Optics

"ItemWatch",
"ItemCompass",
"ItemGPS",
"ItemMap",
"muzzle_snds_L",
"acc_pointer_IR",
"acc_flashlight",
"RH_muzzle_snds_L",
"RH_osprey",
"RH_docter",
"RH_gemtech9",
"RH_gemtech45",
"RH_m9qd",
"RH_aacusp",
"RH_matchsd",
"RH_pmsd",
"RH_suppr9",
"RH_muzisd",
"RH_tecsd",
"RH_sfn57",
"RH_acc_flashlight",
"RH_M6X",
"RH_A26",
"RH_X2",
"RH_X300",
"RH_Deflash",
"RH_pmIR",
"RH_vp70stock",
"RH_demz",
"optic_Yorris",
"ToolKit",
"RH_fhusp",
"muzzle_snds_H",
"muzzle_snds_M",
"muzzle_snds_B",
"muzzle_snds_H_MG",
"muzzle_snds_H_SW",
"optic_Arco",
"optic_Hamr",
"optic_Aco",
"optic_ACO_grn",
"optic_Aco_smg",
"optic_ACO_grn_smg",
"optic_Holosight",
"optic_Holosight_smg",
"optic_SOS",
"optic_MRCO",
"muzzle_snds_acp",
"optic_DMS",
"optic_NVS",
"optic_MRD",
"optic_LRPS",
"muzzle_snds_338_black",
"muzzle_snds_338_green",
"muzzle_snds_338_sand",
"bipod_01_F_snd",
"rhs_bipod",
"muzzle_snds_93mmg",
"muzzle_snds_93mmg_tan",
"optic_AMS",
"optic_AMS_khk",
"optic_AMS_snd",
"optic_KHS_blk",
"optic_KHS_hex",
"optic_KHS_old",
"optic_KHS_tan",
"bipod_01_F_blk",
"kio_Elcan",
"bipod_01_F_mtp",
"bipod_02_F_blk",
"bipod_02_F_tan",
"bipod_02_F_hex",
"bipod_03_F_blk",
"bipod_03_F_oli",
"kio_Elcan_reflex",
"kio_muzzle_sffh",
"kio_muzzle_bfa",
"kio_LLM",
"rhs_acc_tgpa",
"rhs_acc_pbs1",
"rhs_acc_tgpv",
"rhs_acc_dtk4short",
"rhs_acc_dtk4long",
"rhs_acc_dtk4screws",
"rhs_acc_dtk3",
"rhs_acc_dtk1",
"rhs_acc_dtk",
"rhs_acc_dtk1l",
"rhs_acc_ak5",
"rhs_acc_1p29",
"rhs_acc_1p78",
"rhsusf_acc_harris_bipod",
"rhsusf_acc_anpeq15A",
"rhsusf_acc_anpeq15",
"rhsusf_acc_anpeq15_light",
"rhsusf_acc_anpeq15side",
"rhsusf_acc_M2010S",
"rhsusf_acc_SR25S",
"rhsusf_acc_rotex5_grey",
"rhsusf_acc_rotex5_tan",
"rhsusf_acc_nt4_black",
"rhsusf_acc_nt4_tan",
"rhsusf_acc_SF3P556",
"rhsusf_acc_SFMB556",
"rhsusf_acc_compm4",
"rhsusf_acc_eotech_552",
"rhsusf_acc_LEUPOLDMK4",
"rhsusf_acc_ELCAN",
"rhsusf_acc_ELCAN_pip",
"rhsusf_acc_ACOG",
"rhsusf_acc_ACOG_pip",
"rhsusf_acc_ACOG2",
"rhsusf_acc_ACOG3",
"rhsusf_acc_ACOG_USMC",
"rhsusf_acc_ACOG2_USMC",
"rhsusf_acc_ACOG3_USMC",
"rhsusf_acc_LEUPOLDMK4_2",
"rhsusf_acc_EOTECH",
"SMA_eotech552",
"SMA_eotech552_kf",
"SMA_eotech552_kf_des",
"SMA_eotech552_kf_wdl",
"SMA_eotech552_3XDOWN",
"SMA_eotech552_3XDOWN_wdl",
"SMA_eotech552_3XDOWN_des",
"hlc_optic_suit",
"hlc_optic_PVS4FAL",
"hlc_muzzle_snds_fal",
"hlc_muzzle_snds_g3",
"hlc_muzzle_snds_HK33",
"HLC_Optic_ZFSG1",
"hlc_optic_accupoint_g3",
"hlc_optic_PVS4G3",
"hlc_muzzle_Agendasix",
"hlc_muzzle_Tundra",
"hlc_muzzle_Agendasix10mm",
"SMA_ANPEQ15_TAN",
"SMA_ANPEQ15_TOP_TAN",
"SMA_ANPEQ15_BLK",
"SMA_ANPEQ15_TOP_BLK",
"SMA_ANPEQ15_TOP_TAN_MK18",
"SMA_ANPEQ15_TOP_BLK_MK18",
"SMA_ANPEQ15_TOP_TAN_SCAR",
"SMA_ANPEQ15_TOP_BLK_SCAR",
"SMA_Spitfire_01_sc_black",
"SMA_Spitfire_01_black",
"SMA_AIMPOINT",
"SMA_AIMPOINT_GLARE",
"SMA_ELCAN_SPECTER",
"SMA_ELCAN_SPECTER_TAN",
"SMA_Silencer_556",
"SMA_supp1b_556",
"SMA_supp1tan_556",
"SMA_supp2b_556",
"SMA_supp2btan_556",
"SMA_supp_762",
"SMA_supptan_762",
"SMA_spSCAR_762",
"SMA_spSCARtan_762",
"SMA_supp2bSCAR_556",
"SMA_supp2btanSCAR_556",
"tf47_optic_m3maaws",
"ACE_muzzle_mzls_H",
"ACE_muzzle_mzls_B",
"ACE_muzzle_mzls_L",
"ACE_muzzle_mzls_smg_01",
"ACE_muzzle_mzls_smg_02",
"ACE_muzzle_mzls_338",
"ACE_muzzle_mzls_93mmg",
"ACE_acc_pointer_green",
"ACE_optic_Hamr_2D",
"ACE_optic_Hamr_PIP",
"ACE_optic_Arco_2D",
"ACE_optic_Arco_PIP",
"ACE_optic_MRCO_2D",
"ACE_optic_SOS_2D",
"ACE_optic_SOS_PIP",
"ACE_optic_LRPS_2D",
"ACE_optic_LRPS_PIP",
"tf_anprc152_2",
"tf_rf7800str_1",
"ACE_NVG_Gen4",
"ACE_NVG_Wide",
"NVGoggles_OPFOR",
"NVGoggles_INDEP",
"NVGoggles",
"rhsusf_ANPVS_14",
"rhsusf_ANPVS_15",

//Uniforms

"rhs_uniform_cu_ocp",
"rhs_uniform_cu_ucp",
"U_B_CTRG_3",
"U_B_Wetsuit",
"rhs_uniform_FROG01_m81",
"rhs_uniform_FROG01_d",
"rhs_uniform_FROG01_wd",
"U_B_FullGhillie_ard",
"U_B_FullGhillie_lsh",
"U_B_FullGhillie_sard",
"U_B_GhillieSuit",
"U_B_HeliPilotCoveralls",
"U_B_PilotCoveralls",
"U_B_CombatUniform_mcam_vest",
"U_B_survival_uniform",
"TRYK_U_B_wh_tan_Rollup_CombatUniform",	
"TRYK_U_B_NATO_UCP_GRY_CombatUniform",
"TRYK_U_B_NATO_UCP_GRY_R_CombatUniform",
"TRYK_U_B_NATO_UCP_CombatUniform",
"TRYK_U_B_NATO_UCP_R_CombatUniform",
"TRYK_U_B_NATO_OCP_c_BLK_CombatUniform",
"TRYK_U_B_NATO_OCP_BLK_c_R_CombatUniform",
"TRYK_U_B_NATO_OCP_BLK_CombatUniform",
"TRYK_U_B_NATO_OCP_BLK_R_CombatUniform",
"TRYK_U_B_NATO_OCPD_CombatUniform",
"TRYK_U_B_NATO_OCPD_R_CombatUniform",
"TRYK_U_B_NATO_OCP_CombatUniform",
"TRYK_U_B_NATO_OCP_R_CombatUniform",
"TRYK_U_B_MTP_R_CombatUniform",
"TRYK_U_B_MTP_BLK_CombatUniform",
"TRYK_U_B_MTP_BLK_R_CombatUniform",
"TRYK_U_B_Woodland",
"TRYK_U_B_Woodland_Tshirt",
"TRYK_U_B_WDL_GRY_CombatUniform",
"TRYK_U_B_WDL_GRY_R_CombatUniform",
"TRYK_U_B_ARO1_GR_R_CombatUniform",
"TRYK_U_B_ARO1_GRY_R_CombatUniform",
"TRYK_U_B_ARO1_CombatUniform",
"TRYK_U_B_ARO1R_CombatUniform",
"TRYK_U_B_ARO1_BLK_CombatUniform",
"TRYK_U_B_ARO1_BLK_R_CombatUniform",
"TRYK_U_B_ARO1_CBR_CombatUniform",
"TRYK_U_B_ARO1_CBR_R_CombatUniform",
"TRYK_U_B_ARO2_CombatUniform",
"TRYK_U_B_ARO2R_CombatUniform",
"TRYK_U_B_AOR2_BLK_CombatUniform",
"TRYK_U_B_AOR2_BLK_R_CombatUniform",
"TRYK_U_B_AOR2_OD_CombatUniform",
"TRYK_U_B_AOR2_OD_R_CombatUniform",
"TRYK_U_B_AOR2_GRY_CombatUniform",
"TRYK_U_B_AOR2_GRY_R_CombatUniform",
"TRYK_U_B_BLK_T_WH",
"TRYK_U_B_BLK_T_BK",
"TRYK_U_B_RED_T_BR",
"TRYK_U_B_BLK_T_BG_WH",
"TRYK_U_pad_j",
"TRYK_U_pad_j_blk",
"TRYK_T_camo_tan",
"TRYK_T_camo_3c",
"TRYK_T_camo_Wood",
"TRYK_T_camo_wood_marpat",
"TRYK_T_camo_Desert_marpat",
"TRYK_T_camo_3c_BG",
"TRYK_T_camo_Wood_BG",
"TRYK_T_camo_wood_marpat_BG",
"TRYK_T_camo_desert_marpat_BG",
"TRYK_T_PAD",
"TRYK_T_OD_PAD",
"TRYK_T_TAN_PAD",
"TRYK_T_BLK_PAD",
"TRYK_T_T2_PAD",
"TRYK_U_B_PCUHs",
"TRYK_U_B_PCUGHs",
"TRYK_U_B_PCUODHs",
"TRYK_B_USMC_R",
"TRYK_B_USMC_R_ROLL",
"TRYK_B_TRYK_UCP_T",
"TRYK_B_TRYK_3C_T",
"TRYK_B_TRYK_MTP_T",
"TRYK_B_TRYK_OCP_T",
"TRYK_B_TRYK_OCP_D_T",
"TRYK_DMARPAT_T",
"TRYK_C_AOR2_T",
"TRYK_U_B_Sage_T",
"TRYK_U_B_Wood_T",
"TRYK_U_B_BLTAN_T",
"TRYK_U_B_BLOD_T",
"TRYK_OVERALL_flesh",
"TRYK_OVERALL_nok_flesh",
"TRYK_OVERALL_SAGE_BLKboots",
"TRYK_OVERALL_SAGE_BLKboots_nk_blk",
"TRYK_OVERALL_SAGE_BLKboots_nk",
"TRYK_OVERALL_SAGE_BLKboots_nk_blk2",
"TRYK_OVERALL_SAGE",

//FUCK THE TRYK GUY

"TRYK_U_B_OD_OD_CombatUniform",
"TRYK_U_B_OD_OD_R_CombatUniform",
"TRYK_U_B_TANTAN_CombatUniform",
"TRYK_U_B_TANTAN_R_CombatUniform",
"TRYK_U_B_GRYOCP_CombatUniform",
"TRYK_U_B_GRYOCP_R_CombatUniformTshirt",
"TRYK_U_B_TANOCP_CombatUniform",
"TRYK_U_B_TANOCP_R_CombatUniformTshirt",
"TRYK_U_B_BLKOCP_CombatUniform",
"TRYK_U_B_BLKOCP_R_CombatUniformTshirt",
"TRYK_U_B_BLKTAN_CombatUniform",
"TRYK_U_B_BLKTANR_CombatUniformTshirt",
"TRYK_U_B_ODTAN_CombatUniform",
"TRYK_U_B_ODTANR_CombatUniformTshirt",
"TRYK_U_B_GRTAN_CombatUniform",
"TRYK_U_B_GRTANR_CombatUniformTshirt",
"TRYK_U_B_wood_CombatUniform",
"TRYK_U_B_woodR_CombatUniformTshirt",
"TRYK_U_B_wood3c_CombatUniform",
"TRYK_U_B_wood3c_CombatUniformTshirt",
"TRYK_U_B_MARPAT_WOOD_CombatUniform",
"TRYK_U_B_MARPAT_WOOD_CombatUniformTshirt",
"TRYK_U_B_WOOD_MARPAT_CombatUniform",
"TRYK_U_B_WOOD_MARPAT_CombatUniformTshirt",
"TRYK_U_B_woodtan_CombatUniform",
"TRYK_U_B_woodtanR_CombatUniformTshirt",
"TRYK_U_B_3CD_Delta_BDU",
"TRYK_U_B_3CD_Delta_BDUTshirt",
"TRYK_U_B_3CD_Ranger_BDU",
"TRYK_U_B_3CD_Ranger_BDUTshirt",
"TRYK_U_B_3CD_BLK_BDUTshirt",
"TRYK_U_B_3CD_BLK_BDUTshirt2",
"TRYK_U_B_ACU",
"TRYK_U_B_ACUTshirt",
"TRYK_U_B_MARPAT_Wood",
"TRYK_U_B_MARPAT_Wood_Tshirt",
"TRYK_U_B_MARPAT_Desert",
"TRYK_U_B_MARPAT_Desert_Tshirt",
"TRYK_U_B_MARPAT_Desert2",
"TRYK_U_B_MARPAT_Desert2_Tshirt",
"TRYK_U_B_3c",
"TRYK_U_B_3cr",
"TRYK_U_B_OD_BLK",
"TRYK_U_B_OD_BLK_2",
"TRYK_U_B_BLK_TAN_1",
"TRYK_U_B_BLK_TAN_2",

//TRYK GUY U KNOW WHAT U DID BRAH

"TRYK_HRP_UCP",
"TRYK_HRP_USMC",
"TRYK_HRP_khk",

//Helmets

"rhsusf_lwh_helmet_marpatwd",
"rhsusf_Bowman",
"rhsusf_bowman_cap",
"rhsusf_lwh_helmet_marpatd",
"rhsusf_mich_bare_norotos_arc_alt_semi_headset",
"rhsusf_mich_bare_norotos_arc_alt_semi",
"rhsusf_mich_bare_norotos_arc_semi_headset",
"rhsusf_mich_bare_norotos_arc_semi",
"rhsusf_mich_bare_norotos_alt_semi_headset",
"rhsusf_mich_bare_norotos_alt_semi",
"rhsusf_mich_bare_norotos_semi_headset",
"rhsusf_mich_bare_norotos_semi",
"rhsusf_mich_bare_alt_semi",
"rhsusf_mich_bare_semi_headset",
"rhsusf_mich_bare_semi",
"rhsusf_mich_bare_norotos_arc_alt_tan_headset",
"rhsusf_mich_bare_norotos_arc_alt_tan",
"rhsusf_mich_bare_norotos_arc_tan_headset",
"rhsusf_mich_bare_norotos_arc_tan",
"rhsusf_mich_bare_norotos_alt_tan_headset",
"rhsusf_mich_bare_norotos_alt_tan",
"rhsusf_mich_bare_norotos_tan_headset",
"rhsusf_mich_bare_norotos_tan",
"rhsusf_mich_bare_alt_tan",
"rhsusf_mich_bare_tan_headset",
"rhsusf_mich_bare_tan",
"rhsusf_mich_bare_norotos_arc_alt_headset",
"rhsusf_mich_bare_norotos_arc_alt",
"rhsusf_mich_bare_norotos_arc_headset",
"rhsusf_mich_bare_norotos_arc",
"rhsusf_mich_bare_norotos_alt_headset",
"rhsusf_mich_bare_norotos_alt",
"rhsusf_mich_bare_norotos_headset",
"rhsusf_mich_bare_norotos",
"rhsusf_mich_bare_alt",
"rhsusf_mich_bare_tan",
"rhsusf_mich_bare_norotos_arc_alt_headset",
"rhsusf_mich_bare_norotos_arc_alt",
"rhsusf_mich_bare_norotos_arc_headset",
"rhsusf_mich_bare_norotos_arc",
"rhsusf_mich_bare_norotos_alt_headset",
"rhsusf_mich_bare_norotos_alt",
"rhsusf_mich_bare_norotos_headset",
"rhsusf_mich_bare_norotos",
"rhsusf_mich_bare_alt",
"rhsusf_ach_bare_semi",
"rhsusf_ach_bare_des_headset_ess",
"rhsusf_ach_bare_des_headset",
"rhsusf_ach_bare_des_ess",
"rhsusf_ach_bare_des",
"rhsusf_ach_bare_wood_headset_ess",
"rhsusf_ach_bare_wood_headset",
"rhsusf_ach_bare_wood_ess",
"rhsusf_ach_bare_wood",
"rhsusf_ach_bare_tan_headset_ess",
"rhsusf_ach_bare_tan_headset",
"rhsusf_ach_bare_tan_ess",
"rhsusf_ach_bare_tan",
"rhsusf_ach_bare_headset_ess",
"rhsusf_ach_bare_headset",
"rhsusf_ach_bare_ess",
"rhsusf_ach_bare",
"rhsusf_ach_helmet_headset_ess_ucp",
"rhsusf_ach_helmet_headset_ess_ocp",
"rhsusf_ach_helmet_ESS_ucp",
"rhsusf_ach_helmet_ESS_ocp",
"rhsusf_ach_helmet_headset_ucp",
"rhsusf_ach_helmet_headset_ocp",
"rhsusf_ach_helmet_camo_ocp",
"rhsusf_ach_helmet_M81",
"rhsusf_ach_helmet_ucp",
"rhsusf_ach_helmet_ocp",
"rhs_Booniehat_m81",
"rhs_Booniehat_marpatwd",
"rhs_Booniehat_marpatd",
"rhs_Booniehat_ucp",
"rhs_Booniehat_ocp",
"rhsusf_patrolcap_ucp",
"rhsusf_patrolcap_ocp",

//Vanilla Helmets

"H_HelmetB",
"H_HelmetB_camo",
"H_HelmetB_paint",
"H_HelmetB_light",
"H_Booniehat_khk",
"H_Booniehat_oli",
"H_Booniehat_indp",
"H_Booniehat_mcamo",
"H_Booniehat_grn",
"H_Booniehat_tan",
"H_Booniehat_dirty",
"H_Booniehat_dgtl",
"H_Booniehat_khk_hs",
"H_HelmetB_plain_mcamo",
"H_HelmetB_grass",
"H_HelmetB_snakeskin",
"H_HelmetB_desert",
"H_HelmetB_black",
"H_HelmetB_sand",
"H_Cap_headphones",
"H_Cap_tan",
"H_Cap_blk",
"H_Cap_tan_specops_US",
"H_Cap_khaki_specops_UK",
"H_Cap_oli_hs",
"H_Cap_usblack",
"H_HelmetCrew_B",
"H_PilotHelmetFighter_B",
"H_PilotHelmetHeli_B",
"H_PilotHelmetHeli_O",
"H_CrewHelmetHeli_B",
"H_CrewHelmetHeli_O",
"H_HelmetB_light_grass",
"H_HelmetB_light_snakeskin",
"H_HelmetB_light_desert",
"H_HelmetB_light_black",
"H_HelmetB_light_sand",
"H_Beret_Colonel",
"H_Beret_02",
"H_Watchcap_blk",
"H_Watchcap_khk",
"H_Watchcap_camo",

//TRYK Helmets

"TRYK_H_Helmet_JSDF",
"TRYK_H_Helmet_CC",
"TRYK_H_Helmet_WOOD",
"TRYK_H_Helmet_ACU",
"TRYK_H_Helmet_MARPAT_Wood",
"TRYK_H_Helmet_MARPAT_Desert",
"TRYK_H_Helmet_MARPAT_Desert2",
"TRYK_H_Helmet_3C",
"TRYK_H_Booniehat_JSDF",
"TRYK_H_Booniehat_3CD",
"TRYK_H_Booniehat_CC",
"TRYK_H_Booniehat_WOOD",
"TRYK_H_Booniehat_MARPAT_WOOD",
"TRYK_H_Booniehat_MARPAT_Desert",
"TRYK_H_Booniehat_AOR1",
"TRYK_H_Booniehat_AOR2",
"TRYK_H_PASGT_BLK",
"TRYK_H_PASGT_OD",
"TRYK_H_PASGT_COYO",
"TRYK_H_PASGT_TAN",
"TRYK_H_WH",
"TRYK_H_GR",
"TRYK_H_AOR1",
"TRYK_H_AOR2",
"TRYK_H_DELTAHELM_NV",
"TRYK_H_EARMUFF",
"TRYK_H_TACEARMUFF_H",
"TRYK_H_Bandana_H",
"TRYK_H_Bandana_wig",
"TRYK_H_Bandana_wig_g",
"TRYK_H_wig",
"TRYK_H_headset2",
"TRYK_H_ghillie_over",
"TRYK_H_ghillie_top",
"TRYK_H_ghillie_top_headless",
"TRYK_H_ghillie_over_green",
"TRYK_H_ghillie_top_green",
"TRYK_H_ghillie_top_headless_green",
"TRYK_H_woolhat",
"TRYK_H_woolhat_CW",
"TRYK_H_woolhat_WH",
"TRYK_H_woolhat_br",
"TRYK_H_woolhat_cu",
"TRYK_H_woolhat_tan",
"TRYK_H_headsetcap",
"TRYK_H_headsetcap_blk",
"TRYK_H_headsetcap_od",
"TRYK_H_pakol",
"TRYK_H_pakol2",
"TRYK_H_LHS_HEL_G",
"TRYK_H_ghillie_top_headless3",

//GLASSES

"TRYK_Beard",
"TRYK_Beard_BW",
"TRYK_Beard_BK",
"TRYK_Beard_Gr",
"TRYK_Beard2",
"TRYK_Beard_BW2",
"TRYK_Beard_BK2",
"TRYK_Beard_Gr2",
"TRYK_Beard3",
"TRYK_Beard_BW3",
"TRYK_Beard_BK3",
"TRYK_Beard_Gr3",
"TRYK_Beard4",
"TRYK_Beard_BW4",
"TRYK_Beard_BK4",
"TRYK_Beard_Gr4",
"TRYK_H_ghillie_top_headless3glass",
"TRYK_shoulder_armor_BK",
"TRYK_shoulder_armor_OD",
"TRYK_shoulder_armor_CY",

//RHS + BIS Vests

"V_PlateCarrierGL_blk",
"V_PlateCarrierGL_mtp",
"V_PlateCarrierSpec_blk",
"V_PlateCarrierSpec_mtp",
"V_PlateCarrierIAGL_oli",
"V_PlateCarrier1_rgr",
"V_PlateCarrier2_rgr",
"V_PlateCarrier3_rgr",
"V_PlateCarrierGL_rgr",
"V_PlateCarrier1_blk",
"V_PlateCarrierSpec_rgr",
"V_Chestrig_khk",
"V_Chestrig_rgr",
"V_Chestrig_blk",
"V_Chestrig_oli",
"V_TacVest_khk",
"V_TacVest_brn",
"V_TacVest_oli",
"V_TacVest_blk",
"V_TacVest_camo",
"V_TacVest_blk_POLICE",
"V_TacVestIR_blk",
"V_TacVestCamo_khk",
"V_HarnessO_brn",
"V_HarnessOGL_brn",
"V_HarnessO_gry",
"V_HarnessOGL_gry",
"V_HarnessOSpec_brn",
"V_HarnessOSpec_gry",
"V_PlateCarrierIA1_dgtl",
"V_PlateCarrierIA2_dgtl",
"V_PlateCarrierIAGL_dgtl",
"V_RebreatherB",
"V_PlateCarrier_Kerry",
"V_PlateCarrierL_CTRG",
"V_PlateCarrierH_CTRG",
"rhsusf_iotv_ocp_Grenadier",
"rhsusf_iotv_ucp_Grenadier",
"rhsusf_iotv_ocp_Medic",
"rhsusf_iotv_ucp_Medic",
"rhsusf_iotv_ocp_Repair",
"rhsusf_iotv_ucp_Repair",
"rhsusf_iotv_ocp_Rifleman",
"rhsusf_iotv_ucp_Rifleman",
"rhsusf_iotv_ocp_SAW",
"rhsusf_iotv_ucp_SAW",
"rhsusf_iotv_ocp_Squadleader",
"rhsusf_iotv_ucp_Squadleader",
"rhsusf_iotv_ocp_Teamleader",
"rhsusf_iotv_ucp_Teamleader",

//TRYK VESTS, FUCK THE TRYK GUY AGAIN

"TRYK_Hrp_vest_ucp",
"TRYK_Hrp_vest_od",
"TRYK_LOC_AK_chestrig_OD",
"TRYK_LOC_AK_chestrig_TAN",
"TRYK_V_tacv1M_BK",
"TRYK_V_tacv1MLC_BK",
"TRYK_V_tacv1",
"TRYK_V_tacv1_CY",
"TRYK_V_tacv1_BK",
"TRYK_V_tacv1LC_BK",
"TRYK_V_tacv1LC_CY",
"TRYK_V_tacv1LC_OD",
"TRYK_V_ArmorVest_HRT_B",
"TRYK_V_ArmorVest_HRT_OD",
"TRYK_V_ArmorVest_HRT2_B",
"TRYK_V_ArmorVest_HRT2_OD",
"TRYK_V_tacv10_BK",
"TRYK_V_tacv10_OD",
"TRYK_V_tacv10_TN",
"TRYK_V_tacv10LC_BK",
"TRYK_V_tacv10LC_OD",
"TRYK_V_tacv10LC_TN",
"TRYK_V_tacv1L_BK",
"TRYK_V_tacv1L_OD",
"TRYK_V_tacv1L_CY",
"TRYK_V_tacSVD_BK",
"TRYK_V_tacSVD_OD"],true] call BIS_fnc_addVirtualItemCargo;

