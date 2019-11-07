//----

// Spyra Sec Rig
/obj/item/weapon/rig/light/ccsec
	name = "\improper SDC \"ARMD\" suit control module"
	desc = "A lighter, decently armoured rig for surface work. Has ablative plating to greatly reduce the effectiveness of beam weaponry."
	icon_state = "ninja_rig"
	suit_type = "light suit"
	allowed = list(/obj/item/weapon/gun,/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/weapon/melee/baton,/obj/item/weapon/handcuffs,/obj/item/weapon/tank,/obj/item/device/suit_cooling_unit,/obj/item/weapon/cell)
	armor = list(melee = 65, bullet = 15, laser = 65, energy = 15, bomb = 25, bio = 0, rad = 0)
	emp_protection = 10
	slowdown = 0
//	item_flags = STOPPRESSUREDAMAGE | THICKMATERIAL
	offline_slowdown = 0
	offline_vision_restriction = 0

	chest_type = /obj/item/clothing/suit/space/rig/light/ccsec
	helm_type =  /obj/item/clothing/head/helmet/space/rig/light/ccsec
	boot_type =  /obj/item/clothing/shoes/magboots/rig/light/ccsec
	glove_type = /obj/item/clothing/gloves/gauntlets/rig/light/ccsec

/obj/item/clothing/suit/space/rig/light/ccsec
	name = "suit"
	breach_threshold = 18 //comparable to voidsuits

/obj/item/clothing/gloves/gauntlets/rig/light/ccsec
	name = "gloves"

/obj/item/clothing/shoes/magboots/rig/light/ccsec
	name = "shoes"

/obj/item/clothing/head/helmet/space/rig/light/ccsec
	name = "hood"

//--------------------



//////////////////////
// Vox Loadout
/////////////////////

/obj/item/voxbox
	name = "Vox material kit"
	desc = "A secure box containing a set of Vox materials."
	icon = 'icons/obj/storage.dmi'
	icon_state = "gunbox"
	w_class = ITEMSIZE_HUGE

/obj/item/voxbox/attack_self(mob/living/user)
	var/list/options = list()
	options["Assistant Pressure Suit"] = list(/obj/item/clothing/suit/space/vox/civ, /obj/item/clothing/head/helmet/space/vox/civ, /obj/item/clothing/shoes/magboots/vox, /obj/item/clothing/gloves/vox, /obj/item/clothing/mask/gas/swat/vox)
	options["Barkeep Pressure Suit"] = list(/obj/item/clothing/suit/space/vox/civ/bartender, /obj/item/clothing/head/helmet/space/vox/civ/bartender, /obj/item/clothing/shoes/magboots/vox, /obj/item/clothing/gloves/vox, /obj/item/clothing/mask/gas/swat/vox)
	options["Chef Pressure Suit"] = list(/obj/item/clothing/suit/space/vox/civ/chef, /obj/item/clothing/head/helmet/space/vox/civ/chef, /obj/item/clothing/shoes/magboots/vox, /obj/item/clothing/gloves/vox, /obj/item/clothing/mask/gas/swat/vox)
	options["Botanist Pressure Suit"] = list(/obj/item/clothing/suit/space/vox/civ/botanist, /obj/item/clothing/head/helmet/space/vox/civ/botanist, /obj/item/clothing/shoes/magboots/vox, /obj/item/clothing/gloves/vox, /obj/item/clothing/mask/gas/swat/vox)
	options["Janitor Pressure Suit"] = list(/obj/item/clothing/suit/space/vox/civ/janitor, /obj/item/clothing/head/helmet/space/vox/civ/janitor, /obj/item/clothing/shoes/magboots/vox, /obj/item/clothing/gloves/vox, /obj/item/clothing/mask/gas/swat/vox)
	options["Cargo Pressure Suit"] = list(/obj/item/clothing/suit/space/vox/civ/cargo, /obj/item/clothing/head/helmet/space/vox/civ/cargo, /obj/item/clothing/shoes/magboots/vox, /obj/item/clothing/gloves/vox, /obj/item/clothing/mask/gas/swat/vox)
	options["Mechanic Pressure Suit"] = list(/obj/item/clothing/suit/space/vox/civ/mechanic, /obj/item/clothing/head/helmet/space/vox/civ/mechanic, /obj/item/clothing/shoes/magboots/vox, /obj/item/clothing/gloves/vox, /obj/item/clothing/mask/gas/swat/vox)
	options["Librarian Pressure Suit"] = list(/obj/item/clothing/suit/space/vox/civ/librarian, /obj/item/clothing/head/helmet/space/vox/civ/librarian, /obj/item/clothing/shoes/magboots/vox, /obj/item/clothing/gloves/vox, /obj/item/clothing/mask/gas/swat/vox)
	options["Chaplain Pressure Suit"] = list(/obj/item/clothing/suit/space/vox/civ/chaplain, /obj/item/clothing/head/helmet/space/vox/civ/chaplain, /obj/item/clothing/shoes/magboots/vox, /obj/item/clothing/gloves/vox, /obj/item/clothing/mask/gas/swat/vox)
	options["Mining Pressure Suit"] = list(/obj/item/clothing/suit/space/vox/civ/mining, /obj/item/clothing/head/helmet/space/vox/civ/mining, /obj/item/clothing/shoes/magboots/vox, /obj/item/clothing/gloves/vox, /obj/item/clothing/mask/gas/swat/vox)
	options["Engineer Pressure Suit"] = list(/obj/item/clothing/suit/space/vox/civ/engineer, /obj/item/clothing/head/helmet/space/vox/civ/engineer, /obj/item/clothing/shoes/magboots/vox, /obj/item/clothing/gloves/vox, /obj/item/clothing/mask/gas/swat/vox)
	options["Atmos Pressure Suit"] = list(/obj/item/clothing/suit/space/vox/civ/engineer/atmos, /obj/item/clothing/head/helmet/space/vox/civ/engineer/atmos, /obj/item/clothing/shoes/magboots/vox, /obj/item/clothing/gloves/vox, /obj/item/clothing/mask/gas/swat/vox)
	options["Science Pressure Suit"] = list(/obj/item/clothing/suit/space/vox/civ/science, /obj/item/clothing/head/helmet/space/vox/civ/science, /obj/item/clothing/shoes/magboots/vox, /obj/item/clothing/gloves/vox, /obj/item/clothing/mask/gas/swat/vox)
	options["Roboticist Pressure Suit"] = list(/obj/item/clothing/suit/space/vox/civ/science/roboticist, /obj/item/clothing/head/helmet/space/vox/civ/science/roboticist, /obj/item/clothing/shoes/magboots/vox, /obj/item/clothing/gloves/vox, /obj/item/clothing/mask/gas/swat/vox)
	options["Medical Pressure Suit"] = list(/obj/item/clothing/suit/space/vox/civ/medical, /obj/item/clothing/head/helmet/space/vox/civ/medical, /obj/item/clothing/shoes/magboots/vox, /obj/item/clothing/gloves/vox, /obj/item/clothing/mask/gas/swat/vox)
	options["Virology Pressure Suit"] = list(/obj/item/clothing/suit/space/vox/civ/medical/virologist, /obj/item/clothing/head/helmet/space/vox/civ/medical/virologist, /obj/item/clothing/shoes/magboots/vox, /obj/item/clothing/gloves/vox, /obj/item/clothing/mask/gas/swat/vox)
	options["Chemist Pressure Suit"] = list(/obj/item/clothing/suit/space/vox/civ/medical/chemist, /obj/item/clothing/head/helmet/space/vox/civ/medical/chemist, /obj/item/clothing/shoes/magboots/vox, /obj/item/clothing/gloves/vox, /obj/item/clothing/mask/gas/swat/vox)
	options["Paramedic Pressure Suit"] = list(/obj/item/clothing/suit/space/vox/civ/medical/paramedic, /obj/item/clothing/head/helmet/space/vox/civ/medical/paramedic, /obj/item/clothing/shoes/magboots/vox, /obj/item/clothing/gloves/vox, /obj/item/clothing/mask/gas/swat/vox)
	options["Security Pressure Suit"] = list(/obj/item/clothing/suit/space/vox/civ/security, /obj/item/clothing/head/helmet/space/vox/civ/security, /obj/item/clothing/shoes/magboots/vox, /obj/item/clothing/gloves/vox, /obj/item/clothing/mask/gas/swat/vox)
	var/choice = input(user,"What type of suit? (OOC: If you're a head role, ahelp for the headrole suit!)") as null|anything in options
	if(src && choice)
		var/list/things_to_spawn = options[choice]
		for(var/new_type in things_to_spawn)
			var/atom/movable/AM = new new_type(get_turf(src))
			if(istype(AM, /obj/item/clothing/suit))
				to_chat(user, "You have chosen \the [AM]. This is probably worth more than you.")
		qdel(src)

/datum/gear/voxbox
	display_name = "Vox Material Kit"
	path = /obj/item/voxbox
	sort_category = "Xenowear"
	cost = 15
//	whitelisted = "Vox"

//////////////////////
// Ronson Lighter
//////////////////////

/obj/item/weapon/flame/lighter/zippo/ronson
	name = "\improper Ronson lighter"
	desc = "Flip, it's lit. Release, it's out. So simple that even Jim can use it."
	icon = 'icons/boh/fluff.dmi'
	icon_state = "ronson"
	item_state = "ronson"