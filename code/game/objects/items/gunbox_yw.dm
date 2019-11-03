// Big ol' edits. Outta here. - Carl

/obj/item/gunbox/blueshield
	name = "blueshield mainarm box"
	desc = "A secure box containing a blueshield main weapon."

//Primary gun: Either shotgun or SMG

/obj/item/gunbox/blueshield/attack_self(mob/living/user)
	var/list/options = list()
	options["Combat Shotgun (12 Gauge)"] = list(/obj/item/weapon/gun/projectile/shotgun/pump/combat, /obj/item/weapon/storage/box/beanbags/large)
	options["WT550 Machine Pistol (9mm)"] = list(/obj/item/weapon/gun/projectile/automatic/wt550, /obj/item/ammo_magazine/m9mmt/rubber, /obj/item/ammo_magazine/m9mmt, /obj/item/ammo_magazine/m9mmt)
//	options["X01 Energy Gun (Weapon Cell)"] = list(/obj/item/weapon/gun/energy/x01, /obj/item/weapon/cell/device/weapon, /obj/item/weapon/cell/device/weapon)
	var/choice = input(user,"Would you prefer a Combat shotgun or a WT550 Machine Pistol?") as null|anything in options
	if(src && choice)
		var/list/things_to_spawn = options[choice]
		for(var/new_type in things_to_spawn) // Spawn all the things, the gun and the ammo.
			var/atom/movable/AM = new new_type(get_turf(src))
			if(istype(AM, /obj/item/weapon/gun))
				to_chat(user, "You have chosen \the [AM].")
		qdel(src)

/obj/item/gunbox/blueshield/secondary
	name = "blueshield sidearm box"
	desc = "A secure box containing a blueshield sidearm."

//Sidearm: Egun, or a .44 with rubber and lethal mag

/obj/item/gunbox/blueshield/secondary/attack_self(mob/living/user)
	var/list/options = list()
//	options["NSFW Variable Pistol(Microbattery)"] = list(/obj/item/weapon/storage/secure/briefcase/nsfw_pack_hos)
	options["E-Gun (Weapon Cell)"] = list(/obj/item/weapon/gun/energy/gun, /obj/item/weapon/cell/device/weapon, /obj/item/weapon/cell/device/weapon)
	options["Consul Revolver (.44)"] = list(/obj/item/weapon/gun/projectile/revolver/consul, /obj/item/ammo_magazine/s44, /obj/item/ammo_magazine/s44, /obj/item/ammo_magazine/s44/rubber)
	var/choice = input(user,"Would you prefer an e-gun or a revolver?") as null|anything in options
	if(src && choice)
		var/list/things_to_spawn = options[choice]
		for(var/new_type in things_to_spawn) // Spawn all the things, the gun and the ammo.
			var/atom/movable/AM = new new_type(get_turf(src))
			if(istype(AM, /obj/item/weapon/gun))
				to_chat(user, "You have chosen \the [AM].")
		qdel(src)