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