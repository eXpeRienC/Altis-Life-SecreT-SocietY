#include <macro.h>
/*
	File: fn_weaponShopCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for the weapon shops.
	
	Return:
	String: Close the menu
	Array: 
	[Shop Name,
	[ //Array of items to add to the store
		[classname,Custom Name (set nil for default),price]
	]]
*/
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_shop) do
{
	case "med_basic":
	{
		switch (true) do 
		{
			case (playerSide != independent): {"You are not an EMS Medic"};
			default {
				["Hospital EMS Shop",
					[
						["ItemGPS",nil,100],
						["Binocular",nil,150],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,500],
						["NVGoggles",nil,1200],
						["B_FieldPack_ocamo",nil,3000]
					]
				];
			};
		};
	};
	case "cop_basic":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) == 2): 
			{
				["Corrections Officer Shop",
					[
						["SMG_01_F","Taser Rifle",20000],
						["hgun_P07_snds_F","Stun Pistol",2000],
						["SMG_02_F",nil,30000],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,1000],
						["NVGoggles",nil,2000],
						["16Rnd_9x21_Mag",nil,50],
						["30Rnd_9x21_Mag",nil,100],
						["30Rnd_45ACP_Mag_SMG_01","Taser Rifle Magazine",125]
					]
				];
			};
			case (__GETC__(life_coplevel) == 3): 
			{
				["Patrol Officer",
					[
						["SMG_01_F","Taser Rifle",20000],
						["hgun_P07_snds_F","Stun Pistol",2000],
						["arifle_MXC_F",nil,40000],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,1000],
						["optic_ACO_grn",nil,500],
						["acc_flashlight",nil,500],
						["NVGoggles",nil,2000],
						["30Rnd_65x39_caseless_mag_Tracer",nil,200],
						["16Rnd_9x21_Mag",nil,50],
						["30Rnd_45ACP_Mag_SMG_01","Taser Rifle Magazine",125]
					]
				];
			};
			case (__GETC__(life_coplevel) == 4): 
			{
				["Air Patrol Shop",
					[
						["SMG_01_F","Taser Rifle",20000],
						["hgun_P07_snds_F","Stun Pistol",2000],
						["arifle_MXC_F",nil,40000],
						["SmokeShellRed",nil,1000],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,1000],
						["NVGoggles",nil,2000],
						["30Rnd_65x39_caseless_mag_Tracer",nil,200],
						["16Rnd_9x21_Mag",nil,50],
						["30Rnd_45ACP_Mag_SMG_01","Taser Rifle Magazine",125]
					]
				];
			};
			case (__GETC__(life_coplevel) == 5): 
			{
				["Coast Guard Shop",
					[
						["SMG_01_F","Taser Rifle",20000],
						["hgun_P07_snds_F","Stun Pistol",2000],
						["arifle_SDAR_F","Underwater Weapon",10000],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,1000],
						["NVGoggles",nil,2000],
						["16Rnd_9x21_Mag",nil,50],
						["20Rnd_556x45_UW_mag",nil,50],
						["30Rnd_45ACP_Mag_SMG_01","Taser Rifle Magazine",125]
					]
				];
			};
			case (__GETC__(life_coplevel) == 6): 
			{
				["S.W.A.T Shop",
					[
						["SMG_01_F","Taser Rifle",20000],
						["hgun_P07_snds_F","Stun Pistol",2000],
						["arifle_MXC_F",nil,40000],
						["muzzle_snds_H",nil,1000],
						["acc_pointer_IR",nil,1000],
						["optic_Holosight",nil,1000],
						["optic_Hamr",nil,1000],
						["HandGrenade_Stone","Flashbang",1700],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,1000],
						["NVGoggles",nil,2000],
						["30Rnd_65x39_caseless_mag_Tracer",nil,200],
						["16Rnd_9x21_Mag",nil,50],
						["30Rnd_45ACP_Mag_SMG_01","Taser Rifle Magazine",125]
					]
				];
			};
			case (__GETC__(life_coplevel) == 7): 
			{
				["Anti-Terror Task Force Shop",
					[
						["SMG_01_F","Taser Rifle",20000],
						["hgun_P07_snds_F","Stun Pistol",2000],
						["arifle_MX_F",nil,40000],
						["arifle_MXM_F",nil,50000],
						["srifle_EBR_F",nil,70000],
						["acc_pointer_IR",nil,1000],
						["optic_Holosight",nil,1000],
						["optic_SOS",nil,5000],
						["HandGrenade_Stone","Flashbang",1700],
						["SmokeShellGreen","Teargas",1700],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,1000],
						["NVGoggles",nil,2000],
						["30Rnd_65x39_caseless_mag_Tracer",nil,200],
						["20Rnd_762x51_Mag",nil,1000],
						["16Rnd_9x21_Mag",nil,50],
						["30Rnd_45ACP_Mag_SMG_01","Taser Rifle Magazine",125]
					]
				];
			};
			default
			{
				["Rookie Cop Shop",
					[
						["hgun_P07_snds_F","Stun Pistol",2000],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,1000],
						["NVGoggles",nil,2000],
						["16Rnd_9x21_Mag",nil,50]
					]
				];
			};
		};
	};


	case "rebel":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a cop!"};
			case (!license_civ_rebel): {"You don't have a Rebel training license!"};
			default
			{
				["Mohammed's Jihadi Shop",
					[
						["arifle_TRG20_F",nil,25000],
						["arifle_Katiba_F",nil,30000],
						["srifle_DMR_01_F",nil,50000],
						["arifle_TRG21_GL_F",nil,40000],
						["arifle_SDAR_F",nil,20000],
						["optic_ACO_grn",nil,3500],
						["optic_Holosight",nil,3600],
						["acc_flashlight",nil,1000],
						["optic_Hamr",nil,7500],
						["30Rnd_9x21_Mag",nil,200],
						["20Rnd_556x45_UW_mag",nil,125],
						["30Rnd_556x45_Stanag",nil,300],
						["10Rnd_762x51_Mag",nil,500],
						["30Rnd_65x39_caseless_green",nil,275],
						["20Rnd_556x45_UW_mag",nil,325],
						["SmokeShell",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,1000],
						["1Rnd_SmokeGreen_Grenade_shell",nil,300]
					]
				];
			};
		};
	};
	
	case "gun":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a cop!"};
			case (!license_civ_gun): {"You don't have a Firearms license!"};
			default
			{
				["Billy Joe's Firearms",
					[
						["hgun_Rook40_F",nil,6500],
						["hgun_Pistol_heavy_02_F",nil,9850],
						["hgun_ACPC2_F",nil,11500],
						["optic_ACO_grn_smg",nil,2500],
						["V_Rangemaster_belt",nil,4900],
						["16Rnd_9x21_Mag",nil,25],
						["9Rnd_45ACP_Mag",nil,45],
						["6Rnd_45ACP_Cylinder",nil,50],
						["30Rnd_9x21_Mag",nil,75]
					]
				];
			};
		};
	};
	
	case "donator":
	{
		switch(true) do
		{
			case (__GETC__(life_donator) == 0): {"You are not a donator!"};
			case (__GETC__(life_donator) == 1):
			{
				["STS Donator Shop Tier 1",
					[
						["hgun_Rook40_F",nil,750],
						["hgun_PDW2000_F",nil,6500],
						["arifle_SDAR_F",nil,10000],
						["optic_ACO_grn_smg",nil,750],
						["ToolKit",nil,50],
						["itemgps",nil,50],
						["16Rnd_9x21_Mag",nil,25],
						["20Rnd_556x45_UW_mag",nil,225],
						["30Rnd_9x21_Mag",nil,75]
					]
				];
			};

			case (__GETC__(life_donator) == 2):
			{
				["STS Donator Shop Tier 2",
					[
						["hgun_Rook40_F",nil,750],
						["hgun_PDW2000_F",nil,6500],
						["arifle_MK20C_plain_F",nil,25000],
						["optic_ACO_grn_smg",nil,750],
						["NVGoggles",nil,350],
						["ToolKit",nil,50],
						["itemgps",nil,50],
						["16Rnd_9x21_Mag",nil,25],
						["30Rnd_9x21_Mag",nil,75],
						["30Rnd_556x45_Stanag",nil,125]
					]
				];
			};

			case (__GETC__(life_donator) >= 3):
			{
				["STS Donator Shop Tier 3",
					[
						["hgun_Rook40_F",nil,500],
						["hgun_PDW2000_F",nil,6500],
						["hgun_pistol_heavy_01_F",nil,5850],
						["arifle_Mk20C_plain_F",nil,25000],
						["optic_ACO_grn_smg",nil,750],
						["optic_MRCO",nil,10000],
						["NVGoggles",nil,350],
						["ToolKit",nil,50],
						["itemgps",nil,50],
						["FirstAidKit",nil,25],
						["16Rnd_9x21_Mag",nil,25],
						["30Rnd_9x21_Mag",nil,75],
						["11Rnd_45ACP_Mag",nil,85],
						["30Rnd_556x45_Stanag",nil,125]
					]
				];
			};
		};
	};
	
	case "genstore":
	{
		["Altis General Store",
			[
				["Binocular",nil,150],
				["ItemGPS",nil,100],
				["ToolKit",nil,250],
				["FirstAidKit",nil,150],
				["NVGoggles",nil,2000],
				["Chemlight_red",nil,300],
				["Chemlight_yellow",nil,300],
				["Chemlight_green",nil,300],
				["Chemlight_blue",nil,300]
			]
		];
	};
};
