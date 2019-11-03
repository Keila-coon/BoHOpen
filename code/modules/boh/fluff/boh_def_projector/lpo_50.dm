////LPO-50////
//See the files attached on the discussion.


////Grenade & Case////
/obj/item/weapon/grenade/chem_grenade/defoliant
	name = "defoliant canister"
	desc = "Used for clearing local fauna. Common sense would dictate that you should probably leave this alone."
	path = 1
	stage = 2

	New()
		..()
		var/obj/item/weapon/reagent_containers/glass/beaker/B1 = new(src)
		var/obj/item/weapon/reagent_containers/glass/beaker/B2 = new(src)

		B1.reagents.add_reagent("defoliant",40)
		B1.reagents.add_reagent("aluminum", 15)
		B2.reagents.add_reagent("phoron", 15)
		B2.reagents.add_reagent("sacid", 15)


		detonator = new/obj/item/device/assembly_holder/timer_igniter(src)

		beakers += B1
		beakers += B2
		icon_state = initial(icon_state) +"_locked"



//Non-Lethal//
/obj/item/weapon/grenade/chem_grenade/corogas
	name = "defoliant canister"
	desc = "Used for clearing local fauna in a less-than-lethal fashion. Common sense would dictate that you should probably leave this alone."
	path = 1
	stage = 2

	New()
		..()
		var/obj/item/weapon/reagent_containers/glass/beaker/B1 = new(src)
		var/obj/item/weapon/reagent_containers/glass/beaker/B2 = new(src)

		B1.reagents.add_reagent("phosphorus", 40)
		B1.reagents.add_reagent("potassium", 40)
		B1.reagents.add_reagent("corophizine", 40)
		B2.reagents.add_reagent("sugar", 40)
		B2.reagents.add_reagent("corophizine", 80)


		detonator = new/obj/item/device/assembly_holder/timer_igniter(src)

		beakers += B1
		beakers += B2
		icon_state = initial(icon_state) +"_locked"

////LPO Tank////
//As above.