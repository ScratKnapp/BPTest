if not CustomizableWeaponry then return end

AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
AddCSLuaFile("sh_soundscript.lua")
include("sh_sounds.lua")
include("sh_soundscript.lua")

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "M1014"
	SWEP.CSMuzzleFlashes = true
	SWEP.ViewModelMovementScale = 1.15
	SWEP.AimBreathingEnabled = true
	SWEP.NoShells = false
	SWEP.Shell = "KK_INS2_12guage"
	SWEP.DrawAmmo = false

	SWEP.AttachmentModelsVM = {
		["kk_ins2_optic_rail"] = {model = "models/weapons/upgrades/a_modkit_05.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_m1014_tube"] = {model = "models/weapons/m1014/a_magazine_m1014_standard.mdl", pos = Vector(), angle = Angle(), size = Vector(1,1,1), merge = true, active = true},
		["kk_ins2_suppressor_shotgun"] = {model = "models/weapons/upgrades/a_suppressor_12ga.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		
		["kk_ins2_vertgrip"] = {model = "models/weapons/upgrades/a_foregrip_sec2.mdl", pos = Vector(), angle = Angle(0, 90, 0), size = Vector(0.5, 0.5, 0.5), attachment = "Foregrip"},

		["kk_ins2_lam"] = {model = "models/weapons/upgrades/a_laser_sec_shotgun.mdl", pos = Vector(-22.2,-1.4, 2.65), angle = Angle(0,0,0), size = Vector(0.9, 0.9, 0.9), attachment = "Laser"},
		["kk_ins2_flashlight"] = {model = "models/weapons/upgrades/a_flashlight_sec_shotgun.mdl", pos = Vector(-22.2,-1.4, 2.65), angle = Angle(0,0,0), size = Vector(0.9, 0.9, 0.9), attachment = "Laser"},
		["kk_ins2_anpeq15"] = {model = "models/weapons/attachments/v_cw_kk_ins2_cstm_anpeq_shotgun.mdl", pos = Vector(-22.2,-1.4, 2.65), angle = Angle(0,0,0), size = Vector(0.9, 0.9, 0.9), attachment = "Laser"},

		["kk_ins2_magnifier"] = {model = "models/weapons/upgrades/a_optic_aimp2x.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},

		["kk_ins2_aimpoint"] = {model = "models/weapons/upgrades/a_optic_aimpoint.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_eotech"] = {model = "models/weapons/upgrades/a_optic_eotech.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_kobra"] = {model = "models/weapons/upgrades/a_optic_kobra_l.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), retSizeMult = 1.2, merge = true},

		["kk_ins2_cstm_cmore"] = {model = "models/weapons/attachments/v_cw_kk_ins2_cstm_cmore.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_cstm_compm4s"] = {model = "models/weapons/attachments/v_cw_kk_ins2_cstm_compm4s.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_cstm_microt1"] = {model = "models/weapons/attachments/v_cw_kk_ins2_cstm_microt1.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_cstm_barska"] = {model = "models/weapons/attachments/v_cw_kk_ins2_cstm_barska.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_cstm_eotechxps"] = {model = "models/weapons/attachments/v_cw_kk_ins2_cstm_eotechxps.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
	}

	SWEP.AttachmentModelsWM = {
		["kk_ins2_optic_rail"] = {model = "models/weapons/upgrades/w_modkit_4.mdl", pos = Vector(), angle = Angle(0,0,0), size = Vector(1, 1, 1), merge = true},

		["kk_ins2_suppressor_shotgun"] = {model = "models/weapons/upgrades/w_sil_pistol.mdl", pos = Vector(0,0,0), angle = Angle(), size = Vector(1, 1, 1), merge = true},

		["kk_ins2_vertgrip"] = {model = "models/weapons/upgrades/w_foregrip_sec2.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},

		["kk_ins2_lam"] = {model = "models/weapons/upgrades/w_laser_ins.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_flashlight"] = {model = "models/weapons/upgrades/w_laser_ins.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},

		["kk_ins2_magnifier"] = {model = "models/weapons/upgrades/w_magaim.mdl", pos = Vector(0,0,0), angle = Angle(0,0,0), size = Vector(1, 1, 1), merge = true},

		["kk_ins2_aimpoint"] = {model = "models/weapons/upgrades/w_aimpoint.mdl", pos = Vector(0,0,0), angle = Angle(0,0,0), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_eotech"] = {model = "models/weapons/upgrades/w_eotech.mdl", pos = Vector(0,0,0), angle = Angle(0,0,0), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_kobra"] = {model = "models/weapons/upgrades/w_kobra.mdl", pos = Vector(0,0,0), angle = Angle(0,0,0), size = Vector(1, 1, 1), merge = true},

		["kk_ins2_cstm_cmore"] = {model = "models/weapons/attachments/w_cw_kk_ins2_cstm_cmore.mdl", pos = Vector(0,0,0), angle = Angle(0,0,0), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_cstm_compm4s"] = {model = "models/weapons/upgrades/w_aimpoint.mdl", pos = Vector(0,0,0), angle = Angle(0,0,0), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_cstm_microt1"] = {model = "models/weapons/upgrades/w_aimpoint.mdl", pos = Vector(0,0,0), angle = Angle(0,0,0), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_cstm_barska"] = {model = "models/weapons/upgrades/w_eotech.mdl", pos = Vector(0,0,0), angle = Angle(0,0,0), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_cstm_eotechxps"] = {model = "models/weapons/attachments/w_cw_kk_ins2_cstm_eotechxps.mdl", pos = Vector(0,0,0), angle = Angle(0,0,0), size = Vector(1, 1, 1), merge = true},
	}

	SWEP.IronsightPos = Vector(-3.08, -2.5, 1.13)
	SWEP.IronsightAng = Vector(0.2, 0, 0)

	SWEP.KKINS2KobraPos = Vector(-3.08, -1, 0.285)
	SWEP.KKINS2KobraAng = Vector()

	SWEP.KKINS2EoTechPos = Vector(-3.08, -1, 0.285)
	SWEP.KKINS2EoTechAng = Vector()

	SWEP.KKINS2AimpointPos = Vector(-3.08, -1, 0.285)
	SWEP.KKINS2AimpointAng = Vector()

	SWEP.KKINS2MagnifierPos = Vector(-3.0515, -1, 0.318)
	SWEP.KKINS2MagnifierAng = Vector()
	
	SWEP.KKINS2CSTMCMorePos = Vector(-3.08, -1, 0.285)
	SWEP.KKINS2CSTMCMoreAng = Vector()

	SWEP.KKINS2CSTMBarskaPos = Vector(-3.08, -1, 0.285)
	SWEP.KKINS2CSTMBarskaAng = Vector()

	SWEP.KKINS2CSTMMicroT1Pos = Vector(-3.08, -1, 0.335)
	SWEP.KKINS2CSTMMicroT1Ang = Vector()
	
	SWEP.KKINS2CSTMEoTechXPSPos = Vector(-3.08, -1, 0.285)
	SWEP.KKINS2CSTMEoTechXPSAng = Vector()

	SWEP.KKINS2CSTMCompM4SPos = Vector(-3.08, -1, 0.285)
	SWEP.KKINS2CSTMCompM4SAng = Vector()

	SWEP.CustomizationMenuScale = 0.015
end

SWEP.MuzzleEffect = "muzzleflash_m590_1p_core"
SWEP.MuzzleEffectWorld = "muzzleflash_m590_3rd"


SWEP.Attachments = {
	{header = "Sight", offset = {400, -450}, atts = {"kk_ins2_kobra", "kk_ins2_eotech", "kk_ins2_aimpoint", "kk_ins2_cstm_cmore", "kk_ins2_cstm_barska", "kk_ins2_cstm_microt1", "kk_ins2_cstm_eotechxps", "kk_ins2_cstm_compm4s"}},
	{header = "Barrel", offset = {-200, -450}, atts = {"kk_ins2_suppressor_shotgun"}},
	{header = "Under", offset = {-400, 0}, atts = {"kk_ins2_vertgrip"}},
	{header = "Lasers", offset = {125, 400}, atts = {"kk_ins2_lam", "kk_ins2_flashlight", "kk_ins2_anpeq15"}},
	{header = "More Sight", offset = {1000, 0}, atts = {"kk_ins2_magnifier"}, dependencies = CustomizableWeaponry_KK.ins2.magnifierDependencies},
	["+use"] = {header = "Sight Contract", offset = {400, 0}, atts = {"kk_ins2_sights_cstm"}},
	["+reload"] = {header = "Ammo", offset = {900, 500}, atts = {"am_slugrounds", "am_flechetterounds"}}
}

SWEP.Animations = {
	base_pickup = "base_ready",
	base_draw = "base_draw",
	base_fire = {"base_fire_1", "base_fire_2"},
	base_fire_aim = {"iron_fire_1", "iron_fire_2"},
	base_fire_empty = "base_dryfire",
	base_fire_empty_aim = "iron_dryfire",
	--base_bolt = {"base_fire_cock_1", "base_fire_cock_2"},
	--base_bolt_aim = {"iron_fire_cock_1", "iron_fire_cock_2"},
	base_reload_start = "base_reload_start",
	base_reload_start_empty = "base_reload_start_empty",
	base_insert = "base_reload_insert",
	base_reload_end = "base_reload_end",
	base_reload_end_empty = "base_reload_end",
	base_idle = "base_idle",
	base_holster = "base_holster",
	base_sprint = "base_sprint",
	base_safe = "base_down",
	base_safe_aim = "iron_down",
	base_crawl = "base_crawl",

	foregrip_pickup = "foregrip_ready",
	foregrip_draw = "foregrip_draw",
	foregrip_fire = {"foregrip_fire_1", "foregrip_fire_2"},
	foregrip_fire_aim = {"foregrip_iron_fire_1", "foregrip_iron_fire_2"},
	foregrip_fire_empty = "foregrip_dryfire",
	foregrip_fire_empty_aim = "foregrip_iron_dryfire",
	--foregrip_bolt = {"foregrip_fire_cock_1", "foregrip_fire_cock_2"},
	--foregrip_bolt_aim = {"foregrip_iron_fire_cock_1", "foregrip_iron_fire_cock_2"},
	foregrip_reload_start = "foregrip_reload_start",
	foregrip_reload_start_empty = "foregrip_reload_start_empty",
	foregrip_insert = "foregrip_reload_insert",
	foregrip_reload_end = "foregrip_reload_end",
	foregrip_reload_end_empty = "foregrip_reload_end",
	foregrip_idle = "foregrip_holster",
	foregrip_holster = "foregrip_holster",
	foregrip_sprint = "foregrip_sprint",
	foregrip_safe = "foregrip_down",
	foregrip_safe_aim = "foregrip_iron_down",
	foregrip_crawl = "foregrip_crawl",
}

SWEP.SpeedDec = 15

SWEP.Slot = 3
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"semi"}
SWEP.Base = "cw_kk_ins2_base"
SWEP.Category = "Silver's SWEPs - Shotguns"

SWEP.Author			= "Lt. Taylor"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.ViewModelFOV	= 70
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/weapons/m1014/v_m1014.mdl"
SWEP.WorldModel		= "models/weapons/m1014/w_m1014.mdl"

SWEP.WMPos = Vector(4.963, 0.535, -3)
SWEP.WMAng = Vector(-10, 0, 180)

SWEP.Spawnable			= CustomizableWeaponry_KK.ins2.isContentMounted4(SWEP)
SWEP.AdminSpawnable		= CustomizableWeaponry_KK.ins2.isContentMounted4(SWEP)

SWEP.Primary.ClipSize		= 8
SWEP.Primary.DefaultClip	= 0
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "12 Gauge"

SWEP.FireDelay = 0.2
SWEP.FireSound = "CW_KK_INS2_SPAS_FIRE"
SWEP.FireSoundSuppressed = "CW_KK_INS2_M590_FIRE_SUPPRESSED"
SWEP.Recoil = 3

SWEP.Chamberable = true
SWEP.SnapToIdlePostReload = false
SWEP.ShotgunReload = true
SWEP.ReticleInactivityPostFire = SWEP.FireDelay + 0.3
SWEP.GlobalDelayOnShoot = SWEP.FireDelay

SWEP.HipSpread = 0.05
SWEP.AimSpread = 0.005
SWEP.VelocitySensitivity = 1.9
SWEP.MaxSpreadInc = 0.06
SWEP.ClumpSpread = 0.023
SWEP.SpreadPerShot = 0.05
SWEP.SpreadCooldown = 0.8
SWEP.Shots = 9
SWEP.Damage = 6.5

SWEP.FirstDeployTime = 2.2
SWEP.DeployTime = 0.7
SWEP.HolsterTime = 0.5

SWEP.WeaponLength = 18

SWEP.MuzzleVelocity = 260

--if CLIENT then
	--function SWEP:updateStandardParts()
		--self:setElementActive("kk_ins2_mag_saiga_8", !self.ActiveAttachments.kk_ins2_mag_saiga_20)
		--self:setElementActive("kk_ins2_flashhider_small_shotgun", !self.ActiveAttachments.kk_ins2_suppressor_shotgun and !self.ActiveAttachments.kk_ins2_flashhider_big_shotgun)
	--end
--end

SWEP.ReloadTimes = {
	base_fire_cock_1 = {2/24, 0.7},
	base_fire_cock_2 = {2/24, 0.7},
	iron_fire_cock_1 = {4/35, 0.7},
	iron_fire_cock_2 = {4/35, 0.7},

	base_reload_start = {0.6, 0.6},
	base_reload_start_empty = {2.25, 2.89, KK_INS2_SHOTGUN_LOAD_FIRST},
	base_reload_insert = {15/36, 0.72},
	base_reload_end = {0.6, 0.6},
	base_reload_end_empty = {0.6, 0.6},

	foregrip_fire_cock_1 = {2/24, 0.5},
	foregrip_fire_cock_2 = {2/24, 0.5},
	foregrip_iron_fire_cock_1 = {3/35, 0.5},
	foregrip_iron_fire_cock_2 = {3/35, 0.5},

	foregrip_reload_start = {0.6, 0.6},
	foregrip_reload_start_empty = {2.25, 2.89, KK_INS2_SHOTGUN_LOAD_FIRST},
	foregrip_reload_insert = {15/36, 0.72},
	foregrip_reload_end = {0.6, 0.6},
	foregrip_reload_end_empty = {0.6, 0.6},
}