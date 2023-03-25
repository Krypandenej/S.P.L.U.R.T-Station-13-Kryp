GLOBAL_LIST_INIT(bitfields, generate_bitfields())

/// Specifies a bitfield for smarter debugging
/datum/bitfield
	/// The variable name that contains the bitfield
	var/variable

	/// An associative list of the readable flag and its true value
	var/list/flags

/// Turns /datum/bitfield subtypes into a list for use in debugging
/proc/generate_bitfields()
	var/list/bitfields = list()
	for (var/_bitfield in subtypesof(/datum/bitfield))
		var/datum/bitfield/bitfield = new _bitfield
		bitfields[bitfield.variable] = bitfield.flags
	return bitfields

DEFINE_BITFIELD(admin_flags, list(
	"ADMIN" = R_ADMIN,
	"AUTOLOGIN" = R_AUTOLOGIN,
	"BAN" = R_BAN,
	"BUILDMODE" = R_BUILDMODE,
	"DBRANKS" = R_DBRANKS,
	"DEBUG" = R_DEBUG,
	"FUN" = R_FUN,
	"PERMISSIONS" = R_PERMISSIONS,
	"POLL" = R_POLL,
	"POSSESS" = R_POSSESS,
	"SENSITIVE" = R_SENSITIVE,
	"SERVER" = R_SERVER,
	"SOUNDS" = R_SOUNDS,
	"SPAWN" = R_SPAWN,
	"STEALTH" = R_STEALTH,
	"VAREDIT" = R_VAREDIT,
))

DEFINE_BITFIELD(appearance_flags, list(
	"KEEP_APART" = KEEP_APART,
	"KEEP_TOGETHER" = KEEP_TOGETHER,
	"LONG_GLIDE" = LONG_GLIDE,
	"NO_CLIENT_COLOR" = NO_CLIENT_COLOR,
	"PASS_MOUSE" = PASS_MOUSE,
	"PIXEL_SCALE" = PIXEL_SCALE,
	"PLANE_MASTER" = PLANE_MASTER,
	"RESET_ALPHA" = RESET_ALPHA,
	"RESET_COLOR" = RESET_COLOR,
	"RESET_TRANSFORM" = RESET_TRANSFORM,
	"TILE_BOUND" = TILE_BOUND,
	"TILE_MOVER" = TILE_MOVER,
))

DEFINE_BITFIELD(area_flags, list(
	"ABDUCTOR_PROOF" = ABDUCTOR_PROOF,
	"BLOBS_ALLOWED" = BLOBS_ALLOWED,
	"BLOCK_SUICIDE" = BLOCK_SUICIDE,
	"CULT_PERMITTED" = CULT_PERMITTED,
	"FLORA_ALLOWED" = FLORA_ALLOWED,
	"HIDDEN_AREA" = HIDDEN_AREA,
	"MEGAFAUNA_SPAWN_ALLOWED" = MEGAFAUNA_SPAWN_ALLOWED,
	"MOB_SPAWN_ALLOWED" = MOB_SPAWN_ALLOWED,
	"NO_ALERTS" = NO_ALERTS,
	"NOTELEPORT" = NOTELEPORT,
	"CAVES_ALLOWED" = CAVES_ALLOWED,
	"UNIQUE_AREA" = UNIQUE_AREA,
	"VALID_TERRITORY" = VALID_TERRITORY,
	"XENOBIOLOGY_COMPATIBLE" = XENOBIOLOGY_COMPATIBLE,
	"NO_ALERTS" = NO_ALERTS,
))

DEFINE_BITFIELD(body_parts_covered, list(
	"ARM_LEFT" = ARM_LEFT,
	"ARM_RIGHT" = ARM_RIGHT,
	"ARMS" = ARMS,
	"CHEST" = CHEST,
	"FEET" = FEET,
	"FOOT_LEFT" = FOOT_LEFT,
	"FOOT_RIGHT" = FOOT_RIGHT,
	"GROIN" = GROIN,
	"HAND_LEFT" = HAND_LEFT,
	"HAND_RIGHT" = HAND_RIGHT,
	"HANDS" = HANDS,
	"HEAD" = HEAD,
	"LEG_LEFT" = LEG_LEFT,
	"LEG_RIGHT" = LEG_RIGHT,
	"LEGS" = LEGS,
	"NECK" = NECK,
))

DEFINE_BITFIELD(car_traits, list(
	"CAN_KIDNAP" = CAN_KIDNAP,
))

DEFINE_BITFIELD(chemical_flags, list(
	"REAGENT_DEAD_PROCESS" = REAGENT_DEAD_PROCESS,
	"REAGENT_DONOTSPLIT" = REAGENT_DONOTSPLIT,
	"REAGENT_FORCEONNEW" = REAGENT_FORCEONNEW,
	"REAGENT_INVISIBLE" = REAGENT_INVISIBLE,
	"REAGENT_ONLYINVERSE" = REAGENT_ONLYINVERSE,
	"REAGENT_ONMOBMERGE" = REAGENT_ONMOBMERGE,
	"REAGENT_ORGANIC_PROCESS" = REAGENT_ORGANIC_PROCESS,
	"REAGENT_ROBOTIC_PROCESS" = REAGENT_ROBOTIC_PROCESS,
	"REAGENT_SNEAKYNAME" = REAGENT_SNEAKYNAME,
	"REAGENT_SPLITRETAINVOL" = REAGENT_SPLITRETAINVOL,
))

DEFINE_BITFIELD(clear_conversion, list(
	"REACTION_CLEAR_IMPURE"  = REACTION_CLEAR_IMPURE,
	"REACTION_CLEAR_INVERSE" = REACTION_CLEAR_INVERSE
))

DEFINE_BITFIELD(clothing_flags, list(
	"ALLOWINTERNALS" = ALLOWINTERNALS,
	"BLOCK_GAS_SMOKE_EFFECT" = BLOCK_GAS_SMOKE_EFFECT,
	"IGNORE_HAT_TOSS" = IGNORE_HAT_TOSS,
	"LAVAPROTECT" = LAVAPROTECT,
	"NOSLIP" = NOSLIP,
	"SCAN_REAGENTS" = SCAN_REAGENTS,
	"STOPSPRESSUREDAMAGE" = STOPSPRESSUREDAMAGE,
	"THICKMATERIAL" = THICKMATERIAL,
	"VOICEBOX_DISABLED" = VOICEBOX_DISABLED,
	"VOICEBOX_TOGGLABLE" = VOICEBOX_TOGGLABLE,
))

DEFINE_BITFIELD(combat_flags, list(
	"COMBAT_FLAG_ATTEMPTING_CRAWL" = COMBAT_FLAG_ATTEMPTING_CRAWL,
	"COMBAT_FLAG_HARD_STAMCRIT" = COMBAT_FLAG_HARD_STAMCRIT,
	"COMBAT_FLAG_INTENTIONALLY_RESTING" = COMBAT_FLAG_INTENTIONALLY_RESTING,
	"COMBAT_FLAG_RESISTING_REST" = COMBAT_FLAG_RESISTING_REST,
	"COMBAT_FLAG_SPRINT_ACTIVE" = COMBAT_FLAG_SPRINT_ACTIVE,
	"COMBAT_FLAG_SPRINT_FORCED" = COMBAT_FLAG_SPRINT_FORCED,
	"COMBAT_FLAG_SPRINT_TOGGLED" = COMBAT_FLAG_SPRINT_TOGGLED,
))

DEFINE_BITFIELD(datum_flags, list(
	"DF_USE_TAG" = DF_USE_TAG,
	"DF_VAR_EDITED" = DF_VAR_EDITED,
	"DF_ISPROCESSING" = DF_ISPROCESSING,
))

DEFINE_BITFIELD(disease_flags, list(
	"CAN_CARRY"	= CAN_CARRY,
	"CAN_RESIST" = CAN_RESIST,
	"CURABLE" = CURABLE,
))

DEFINE_BITFIELD(explosion_flags, list(
	"EXPLOSION_FLAG_DENSITY_DEPENDENT" = EXPLOSION_FLAG_DENSITY_DEPENDENT,
	"EXPLOSION_FLAG_HARD_OBSTACLE" = EXPLOSION_FLAG_HARD_OBSTACLE,
))

DEFINE_BITFIELD(flags_1, list(
	"ADMIN_SPAWNED_1" = ADMIN_SPAWNED_1,
	"BLOCK_FACE_ATOM_1" = BLOCK_FACE_ATOM_1,
	"CAN_BE_DIRTY_1" = CAN_BE_DIRTY_1,
	"CONDUCT_1" = CONDUCT_1,
	"DEFAULT_RICOCHET_1" = DEFAULT_RICOCHET_1,
	"HAS_CONTEXTUAL_SCREENTIPS_1" = HAS_CONTEXTUAL_SCREENTIPS_1,
	"HEAR_1" = HEAR_1,
	"HOLOGRAM_1" = HOLOGRAM_1,
	"INITIALIZED_1" = INITIALIZED_1,
	"NODECONSTRUCT_1" = NODECONSTRUCT_1,
	"NOJAUNT_1" = NOJAUNT_1,
	"NO_LAVA_GEN_1" = NO_LAVA_GEN_1,
	"NO_RUINS_1" = NO_RUINS_1,
	"NO_SCREENTIPS_1" = NO_SCREENTIPS_1,
	"OVERLAY_QUEUED_1" = OVERLAY_QUEUED_1,
	"ON_BORDER_1" = ON_BORDER_1,
	"PREVENT_CLICK_UNDER_1" = PREVENT_CLICK_UNDER_1,
	"PREVENT_CONTENTS_EXPLOSION_1" = PREVENT_CONTENTS_EXPLOSION_1,
	"SHOCKED_1" = SHOCKED_1,
	"UNUSED_RESERVATION_TURF_1" = UNUSED_RESERVATION_TURF_1,
))

DEFINE_BITFIELD(flags_cover, list(
	"GLASSESCOVERSEYE" = GLASSESCOVERSEYES,
	"HEADCOVERSEYES" = HEADCOVERSEYES,
	"HEADCOVERSMOUTH" = HEADCOVERSMOUTH,
	"MASKCOVERSEYES" = MASKCOVERSEYES,
	"MASKCOVERSMOUTH" = MASKCOVERSMOUTH,
))

DEFINE_BITFIELD(flags_inv, list(
	"HIDEACCESSORY" = HIDEACCESSORY,
	"HIDEEARS" = HIDEEARS,
	"HIDEEYES" = HIDEEYES,
	"HIDEFACE" = HIDEFACE,
	"HIDEFACIALHAI" = HIDEFACIALHAIR,
	"HIDEGLOVES" = HIDEGLOVES,
	"HIDEHAIR" = HIDEHAIR,
	"HIDEJUMPSUIT" = HIDEJUMPSUIT,
	"HIDEMASK" = HIDEMASK,
	"HIDENECK" = HIDENECK,
	"HIDESHOES" = HIDESHOES,
	"HIDESNOUT" = HIDESNOUT,
	"HIDESUITSTORA" = HIDESUITSTORAGE,
	"HIDETAUR" = HIDETAUR,
))
DEFINE_BITFIELD(flags_ricochet, list(
	"RICOCHET_SHINY" = RICOCHET_SHINY,
	"RICOCHET_HARD" = RICOCHET_HARD
))

DEFINE_BITFIELD(genital_flags, list(
	"CAN_CLIMAX_WITH" = CAN_CLIMAX_WITH,
	"CAN_MASTURBATE_WITH" = CAN_MASTURBATE_WITH,
	"GENITAL_BLACKLISTED" = GENITAL_BLACKLISTED,
	"GENITAL_FUID_PRODUCTION" = GENITAL_FUID_PRODUCTION,
	"GENITAL_HIDDEN" = GENITAL_HIDDEN,
	"GENITAL_INTERNAL" = GENITAL_INTERNAL,
	"GENITAL_THROUGH_CLOTHES" = GENITAL_THROUGH_CLOTHES,
	"MASTURBATE_LINKED_ORGAN" = MASTURBATE_LINKED_ORGAN,
	//SPLURT edit
	"GENITAL_CHASTENED" = GENITAL_CHASTENED,
	"GENITAL_IMPOTENT" = GENITAL_IMPOTENT,
	"GENITAL_EDGINGONLY" = GENITAL_EDGINGONLY,
	"GENITAL_DISAPPOINTING" = GENITAL_DISAPPOINTING,
	"GENITAL_OVERSTIM" = GENITAL_OVERSTIM,
	"GENITAL_HYPERSENS" = GENITAL_HYPERSENS,
	"GENITAL_CAN_STUFF" = GENITAL_CAN_STUFF,
	//
))

DEFINE_BITFIELD(interaction_flags_atom, list(
	"INTERACT_ATOM_ATTACK_HAND" = INTERACT_ATOM_ATTACK_HAND,
	"INTERACT_ATOM_CHECK_GRAB" = INTERACT_ATOM_CHECK_GRAB,
	"INTERACT_ATOM_IGNORE_INCAPACITATED" = INTERACT_ATOM_IGNORE_INCAPACITATED,
	"INTERACT_ATOM_IGNORE_RESTRAINED" = INTERACT_ATOM_IGNORE_RESTRAINED,
	"INTERACT_ATOM_NO_FINGERPRINT_ATTACK_HAND" = INTERACT_ATOM_NO_FINGERPRINT_ATTACK_HAND,
	"INTERACT_ATOM_NO_FINGERPRINT_INTERACT" = INTERACT_ATOM_NO_FINGERPRINT_INTERACT,
	"INTERACT_ATOM_REQUIRES_ANCHORED" = INTERACT_ATOM_REQUIRES_ANCHORED,
	"INTERACT_ATOM_REQUIRES_DEXTERITY" = INTERACT_ATOM_REQUIRES_DEXTERITY,
	"INTERACT_ATOM_UI_INTERACT" = INTERACT_ATOM_UI_INTERACT,
))

DEFINE_BITFIELD(interaction_flags_machine, list(
	"INTERACT_MACHINE_ALLOW_SILICON" = INTERACT_MACHINE_ALLOW_SILICON,
	"INTERACT_MACHINE_OFFLINE" = INTERACT_MACHINE_OFFLINE,
	"INTERACT_MACHINE_OPEN" = INTERACT_MACHINE_OPEN,
	"INTERACT_MACHINE_OPEN_SILICON" = INTERACT_MACHINE_OPEN_SILICON,
	"INTERACT_MACHINE_REQUIRES_SILICON" = INTERACT_MACHINE_REQUIRES_SILICON,
	"INTERACT_MACHINE_SET_MACHINE" = INTERACT_MACHINE_SET_MACHINE,
	"INTERACT_MACHINE_WIRES_IF_OPEN" = INTERACT_MACHINE_WIRES_IF_OPEN,
))

DEFINE_BITFIELD(interaction_flags_item, list(
	"INTERACT_ITEM_ATTACK_HAND_PICKUP" = INTERACT_ITEM_ATTACK_HAND_PICKUP,
))

DEFINE_BITFIELD(item_flags, list(
	"ABSTRACT" = ABSTRACT,
	"BEING_REMOVED" = BEING_REMOVED,
	"DROPDEL" = DROPDEL,
	"FORCE_STRING_OVERRIDE" = FORCE_STRING_OVERRIDE,
	"IN_INVENTORY" = IN_INVENTORY,
	"IN_STORAGE" = IN_STORAGE,
	"ITEM_CAN_BLOCK" = ITEM_CAN_BLOCK,
	"ITEM_CAN_PARRY" = ITEM_CAN_PARRY,
	"ITEM_HAS_CONTEXTUAL_SCREENTIPS" = ITEM_HAS_CONTEXTUAL_SCREENTIPS,
	"NEEDS_PERMIT" = NEEDS_PERMIT,
	"NOBLUDGEON" = NOBLUDGEON,
	"NO_MAT_REDEMPTION" = NO_MAT_REDEMPTION,
	"SLOWS_WHILE_IN_HAND" = SLOWS_WHILE_IN_HAND,
))

DEFINE_BITFIELD(material_flags, list(
	"MATERIAL_ADD_PREFIX" = MATERIAL_ADD_PREFIX,
	"MATERIAL_AFFECT_STATISTICS" = MATERIAL_AFFECT_STATISTICS,
	"MATERIAL_COLOR" = MATERIAL_COLOR,
))

DEFINE_BITFIELD(mob_biotypes, list(
	"MOB_BEAST" = MOB_BEAST,
	"MOB_BUG" = MOB_BUG,
	"MOB_EPIC" = MOB_EPIC,
	"MOB_HUMANOID" = MOB_HUMANOID,
	"MOB_MINERAL" = MOB_MINERAL,
	"MOB_ORGANIC" = MOB_ORGANIC,
	"MOB_REPTILE" = MOB_REPTILE,
	"MOB_ROBOTIC" = MOB_ROBOTIC,
	"MOB_SPIRIT" = MOB_SPIRIT,
	"MOB_UNDEAD" = MOB_UNDEAD,
))

DEFINE_BITFIELD(mobility_flags, list(
	"MOBILITY_HOLD" = MOBILITY_HOLD,
	"MOBILITY_MOVE" = MOBILITY_MOVE,
	"MOBILITY_PICKUP" = MOBILITY_PICKUP,
	"MOBILITY_PULL" = MOBILITY_PULL,
	"MOBILITY_RESIST" = MOBILITY_RESIST,
	"MOBILITY_STAND" = MOBILITY_STAND,
	"MOBILITY_STORAGE" = MOBILITY_STORAGE,
	"MOBILITY_UI" = MOBILITY_UI,
	"MOBILITY_USE" = MOBILITY_USE,
))

DEFINE_BITFIELD(movement_type, list(
	"FLOATING" = FLOATING,
	"FLYING" = FLYING,
	"GROUND" = GROUND,
	"PHASING" = PHASING,
	"VENTCRAWLING" = VENTCRAWLING,
))

DEFINE_BITFIELD(mutantrace_variation, list(
	"STYLE_DIGITIGRADE" = STYLE_DIGITIGRADE,
	"STYLE_HOOF_TAURIC" = STYLE_HOOF_TAURIC,
	"STYLE_MUZZLE" = STYLE_MUZZLE,
	"STYLE_NO_ANTHRO_ICON" = STYLE_NO_ANTHRO_ICON,
	"STYLE_PAW_TAURIC" = STYLE_PAW_TAURIC,
	"STYLE_SNEK_TAURIC" = STYLE_SNEK_TAURIC,
	"USE_SNEK_CLIP_MASK" = USE_SNEK_CLIP_MASK,
	"USE_QUADRUPED_CLIP_MASK" = USE_QUADRUPED_CLIP_MASK,
))

DEFINE_BITFIELD(obj_flags, list(
	"BEING_SHOCKED" = BEING_SHOCKED,
	"BLOCK_Z_IN_DOWN" = BLOCK_Z_IN_DOWN,
	"BLOCK_Z_IN_UP" = BLOCK_Z_IN_UP,
	"BLOCK_Z_OUT_DOWN" = BLOCK_Z_OUT_DOWN,
	"BLOCK_Z_OUT_UP" = BLOCK_Z_OUT_UP,
	"CAN_BE_HIT" = CAN_BE_HIT,
	"DANGEROUS_POSSESSION" = DANGEROUS_POSSESSION,
	"EMAGGED" = EMAGGED,
	"EXAMINE_SKIP" = EXAMINE_SKIP,
	"FROZEN" = FROZEN,
	"IN_USE" = IN_USE,
	"ON_BLUEPRINTS" = ON_BLUEPRINTS,
	"SHOVABLE_ONTO" = SHOVABLE_ONTO,
	"UNIQUE_RENAME" = UNIQUE_RENAME,
	"USES_TGUI" = USES_TGUI,
))

DEFINE_BITFIELD(organ_flags, list(
	"ORGAN_EXTERNAL" = ORGAN_EXTERNAL,
	"ORGAN_FAILING" = ORGAN_FAILING,
	"ORGAN_FROZEN" = ORGAN_FROZEN,
	"ORGAN_NO_SPOIL" = ORGAN_NO_SPOIL,
	"ORGAN_SYNTHETIC" = ORGAN_SYNTHETIC,
	"ORGAN_VITAL" = ORGAN_VITAL,
))

DEFINE_BITFIELD(pass_flags, list(
	"LETPASSTHROW" = LETPASSTHROW,
	"PASSBLOB" = PASSBLOB,
	"PASSCLOSEDTURF" = PASSCLOSEDTURF,
	"PASSGLASS" = PASSGLASS,
	"PASSGRILLE" = PASSGRILLE,
	"PASSMACHINE" = PASSMACHINE,
	"PASSMOB" = PASSMOB,
	"PASSSTRUCTURE" = PASSSTRUCTURE,
	"PASSTABLE" = PASSTABLE,
))

DEFINE_BITFIELD(pass_flags_self, list(
	"LETPASSTHROW" = LETPASSTHROW,
	"PASSBLOB" = PASSBLOB,
	"PASSCLOSEDTURF" = PASSCLOSEDTURF,
	"PASSGLASS" = PASSGLASS,
	"PASSGRILLE" = PASSGRILLE,
	"PASSMACHINE" = PASSMACHINE,
	"PASSMOB" = PASSMOB,
	"PASSSTRUCTURE" = PASSSTRUCTURE,
	"PASSTABLE" = PASSTABLE,
))

DEFINE_BITFIELD(rad_flags, list(
	"RAD_PROTECT_CONTENTS" = RAD_PROTECT_CONTENTS,
	"RAD_NO_CONTAMINATE" = RAD_NO_CONTAMINATE,
))

DEFINE_BITFIELD(reagents_holder_flags, list(
	"AMOUNT_VISIBLE" = AMOUNT_VISIBLE,
	"DRAINABLE" = DRAINABLE,
	"DRAWABLE" = DRAWABLE,
	"INJECTABLE" = INJECTABLE,
	"NO_REACT" = NO_REACT,
	"REFILLABLE" = REFILLABLE,
	"TRANSPARENT" = TRANSPARENT,
))

DEFINE_BITFIELD(resistance_flags, list(
	"ACID_PROOF" = ACID_PROOF,
	"FIRE_PROOF" = FIRE_PROOF,
	"FLAMMABLE" = FLAMMABLE,
	"FREEZE_PROOF" = FREEZE_PROOF,
	"GOLIATH_RESISTANCE" = GOLIATH_RESISTANCE,
	"GOLIATH_WEAKNESS" = GOLIATH_WEAKNESS,
	"INDESTRUCTIBLE" = INDESTRUCTIBLE,
	"LAVA_PROOF" = LAVA_PROOF,
	"ON_FIRE" = ON_FIRE,
	"UNACIDABLE" = UNACIDABLE,
))

DEFINE_BITFIELD(shield_flags, list(
	"SHIELD_BASH_ALWAYS_DISARM" = SHIELD_BASH_ALWAYS_DISARM,
	"SHIELD_BASH_ALWAYS_KNOCKDOWN" = SHIELD_BASH_ALWAYS_KNOCKDOWN,
	"SHIELD_BASH_GROUND_SLAM" = SHIELD_BASH_GROUND_SLAM,
	"SHIELD_BASH_GROUND_SLAM_DISARM" = SHIELD_BASH_GROUND_SLAM_DISARM,
	"SHIELD_BASH_WALL_DISARM" = SHIELD_BASH_WALL_DISARM,
	"SHIELD_BASH_WALL_KNOCKDOWN" = SHIELD_BASH_WALL_KNOCKDOWN,
	"SHIELD_CAN_BASH" = SHIELD_CAN_BASH,
	"SHIELD_DISABLER_DISRUPTED" = SHIELD_DISABLER_DISRUPTED,
	"SHIELD_ENERGY_STRONG" = SHIELD_ENERGY_STRONG,
	"SHIELD_ENERGY_WEAK" = SHIELD_ENERGY_WEAK,
	"SHIELD_KINETIC_STRONG" = SHIELD_KINETIC_STRONG,
	"SHIELD_KINETIC_WEAK" = SHIELD_KINETIC_WEAK,
	"SHIELD_NO_MELEE" = SHIELD_NO_MELEE,
	"SHIELD_NO_RANGED" = SHIELD_NO_RANGED,
	"SHIELD_TRANSPARENT" = SHIELD_TRANSPARENT,
))

DEFINE_BITFIELD(sight, list(
	"BLIND" = BLIND,
	"SEE_BLACKNESS" = SEE_BLACKNESS,
	"SEE_INFRA" = SEE_INFRA,
	"SEE_MOBS" = SEE_MOBS,
	"SEE_OBJS" = SEE_OBJS,
	"SEE_PIXELS" = SEE_PIXELS,
	"SEE_SELF" = SEE_SELF,
	"SEE_THRU" = SEE_THRU,
	"SEE_TURFS" = SEE_TURFS,
))

DEFINE_BITFIELD(slot_flags, list(
	"ITEM_SLOT_ACCESSORY" = ITEM_SLOT_ACCESSORY,
	"ITEM_SLOT_BACK" = ITEM_SLOT_BACK,
	"ITEM_SLOT_BACKPACK" = ITEM_SLOT_BACKPACK,
	"ITEM_SLOT_BELT" = ITEM_SLOT_BELT,
	"ITEM_SLOT_DEX_STORAGE" = ITEM_SLOT_DEX_STORAGE,
	"ITEM_SLOT_EARS" = ITEM_SLOT_EARS,
	"ITEM_SLOT_EYES" = ITEM_SLOT_EYES,
	"ITEM_SLOT_FEET" = ITEM_SLOT_FEET,
	"ITEM_SLOT_GLOVES" = ITEM_SLOT_GLOVES,
	"ITEM_SLOT_HANDCUFFED" = ITEM_SLOT_HANDCUFFED,
	"ITEM_SLOT_HANDS" = ITEM_SLOT_HANDS,
	"ITEM_SLOT_HEAD" = ITEM_SLOT_HEAD,
	"ITEM_SLOT_ICLOTHING" = ITEM_SLOT_ICLOTHING,
	"ITEM_SLOT_ID" = ITEM_SLOT_ID,
	"ITEM_SLOT_LEGCUFFED" = ITEM_SLOT_LEGCUFFED,
	"ITEM_SLOT_LPOCKET" = ITEM_SLOT_LPOCKET,
	"ITEM_SLOT_MASK" = ITEM_SLOT_MASK,
	"ITEM_SLOT_NECK" = ITEM_SLOT_NECK,
	"ITEM_SLOT_OCLOTHING" = ITEM_SLOT_OCLOTHING,
	"ITEM_SLOT_RPOCKET" = ITEM_SLOT_RPOCKET,
	"ITEM_SLOT_SUITSTORE" = ITEM_SLOT_SUITSTORE,
))

DEFINE_BITFIELD(smooth, list(
	"SMOOTH_BORDER" = SMOOTH_BORDER,
	"SMOOTH_DIAGONAL" = SMOOTH_DIAGONAL,
	"SMOOTH_MORE" = SMOOTH_MORE,
	"SMOOTH_QUEUED" = SMOOTH_QUEUED,
	"SMOOTH_TRUE" = SMOOTH_TRUE,
))

DEFINE_BITFIELD(status_flags, list(
	"CANKNOCKDOWN" = CANKNOCKDOWN,
	"CANPUSH" = CANPUSH,
	"CANSTAGGER" = CANSTAGGER,
	"CANSTUN" = CANSTUN,
	"CANUNCONSCIOUS" = CANUNCONSCIOUS,
	"GODMODE" = GODMODE,
))

DEFINE_BITFIELD(storage_flags, list(
	"STORAGE_LIMIT_COMBINED_W_CLASS" = STORAGE_LIMIT_COMBINED_W_CLASS,
	"STORAGE_LIMIT_MAX_ITEMS" = STORAGE_LIMIT_MAX_ITEMS,
	"STORAGE_LIMIT_MAX_W_CLASS" = STORAGE_LIMIT_MAX_W_CLASS,
	"STORAGE_LIMIT_VOLUME" = STORAGE_LIMIT_VOLUME,
))

DEFINE_BITFIELD(vis_flags, list(
	"VIS_HIDE" = VIS_HIDE,
	"VIS_INHERIT_DIR" = VIS_INHERIT_DIR,
	"VIS_INHERIT_ICON" = VIS_INHERIT_ICON,
	"VIS_INHERIT_ICON_STATE" = VIS_INHERIT_ICON_STATE,
	"VIS_INHERIT_ID" = VIS_INHERIT_ID,
	"VIS_INHERIT_LAYER" = VIS_INHERIT_LAYER,
	"VIS_INHERIT_PLANE" = VIS_INHERIT_PLANE,
	"VIS_UNDERLAY" = VIS_UNDERLAY,
))

DEFINE_BITFIELD(visor_flags, list(
	"ALLOWINTERNALS" = ALLOWINTERNALS,
	"BLOCK_GAS_SMOKE_EFFECT" = BLOCK_GAS_SMOKE_EFFECT,
	"IGNORE_HAT_TOSS" = IGNORE_HAT_TOSS,
	"LAVAPROTECT" = LAVAPROTECT,
	"NOSLIP" = NOSLIP,
	"NOSLIP_ICE" = NOSLIP_ICE,
	"SCAN_REAGENTS" = SCAN_REAGENTS,
	"STOPSPRESSUREDAMAGE" = STOPSPRESSUREDAMAGE,
	"THICKMATERIAL" = THICKMATERIAL,
	"VOICEBOX_DISABLED" = VOICEBOX_DISABLED,
	"VOICEBOX_TOGGLABLE" = VOICEBOX_TOGGLABLE,
))

DEFINE_BITFIELD(visor_flags_cover, list(
	"GLASSESCOVERSEYE" = GLASSESCOVERSEYES,
	"HEADCOVERSEYES" = HEADCOVERSEYES,
	"HEADCOVERSMOUTH" = HEADCOVERSMOUTH,
	"MASKCOVERSEYES" = MASKCOVERSEYES,
	"MASKCOVERSMOUTH" = MASKCOVERSMOUTH,
))

DEFINE_BITFIELD(visor_flags_inv, list(
	"HIDEACCESSORY" = HIDEACCESSORY,
	"HIDEEARS" = HIDEEARS,
	"HIDEEYES" = HIDEEYES,
	"HIDEFACE" = HIDEFACE,
	"HIDEFACIALHAI" = HIDEFACIALHAIR,
	"HIDEGLOVES" = HIDEGLOVES,
	"HIDEHAIR" = HIDEHAIR,
	"HIDEJUMPSUIT" = HIDEJUMPSUIT,
	"HIDEMASK" = HIDEMASK,
	"HIDENECK" = HIDENECK,
	"HIDESHOES" = HIDESHOES,
	"HIDESNOUT" = HIDESNOUT,
	"HIDESUITSTORA" = HIDESUITSTORAGE,
	"HIDETAUR" = HIDETAUR,
))

DEFINE_BITFIELD(vore_flags, list(
	"ABSORBABLE" = ABSORBABLE,
	"ABSORBED" = ABSORBED,
	"DEVOURABLE" = DEVOURABLE,
	"DIGESTABLE" = DIGESTABLE,
	"FEEDING" = FEEDING,
	"LICKABLE" = LICKABLE,
	"MOBVORE" = MOBVORE,
	"NO_VORE" = NO_VORE,
	"SMELLABLE" = SMELLABLE,
	"VOREPREF_INIT" = VOREPREF_INIT,
	"VORE_INIT" = VORE_INIT,
))

DEFINE_BITFIELD(zap_flags, list(
	"ZAP_ALLOW_DUPLICATES" = ZAP_ALLOW_DUPLICATES,
	"ZAP_MACHINE_EXPLOSIVE" = ZAP_MACHINE_EXPLOSIVE,
	"ZAP_MOB_DAMAGE" = ZAP_MOB_DAMAGE,
	"ZAP_MOB_STUN" = ZAP_MOB_STUN,
	"ZAP_OBJ_DAMAGE" = ZAP_OBJ_DAMAGE,
))
