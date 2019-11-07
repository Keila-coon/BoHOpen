datum
	reagent
// Shamelessly ripped from Y.W., with large changes. -Carl
		benzilate
			name = "Odd Goo"
			id = "benzilate"
			description = "Grey... goo? This smells like hot acid. Consuming this likely wouldn't be good for your health."
			taste_description = "raw iron"
			taste_mult = 0.4
			metabolism = REM * 2.5
			color = "#929292"

		phenethylamine
			name = "Phenethylamine"
			id = "phenethylamine"
			description = "Just looking at this makes you feel odd. Whether or not this would be good to consume is likely a gamble."
			color = "#463667"
			data = list("count"=1)
			on_mob_life(var/mob/living/M as mob)
				if(!M) M = holder.my_atom
				if(data)
					switch(data["count"])
						if(1 to 30)
							if(prob(9)) M.emote("me",1,"blushes")
							if(prob(9)) M << "\red You feel so needy.."
						if (30 to INFINITY)
							if(prob(3)) M.emote("me",1,"blushes")
							if(prob(5)) M.say("!moans out lewdly!")
							if(prob(9)) M << "\red You can't help but want to touch yourself then and now!"
					data["count"]++
				holder.remove_reagent(src.id, 0.2)
				//..()
				return

/datum/chemical_reaction/benzilate
	name = "Benzilate"
	id = "benzilate"
	result = "benzilate"
	required_reagents = list("paracetamol" = 1, "mindbreaker" = 1)
	result_amount = 2

/datum/chemical_reaction/phenethylamine
	name = "Phenethylamine"
	id = "phenethylamine"
	result = "phenethylamine"
	required_reagents = list("paroxetine" = 1, "benzilate" = 1)
	result_amount = 2

/datum/reagent/benzilate/affect_blood(var/mob/living/carbon/M, var/alien, var/removed)
	if(alien == IS_DIONA)
		return
	var/drug_strength = 12
	if(alien == IS_SKRELL)
		drug_strength = drug_strength * 0.6
	M.make_dizzy(drug_strength)
	M.Confuse(drug_strength * 14)
	M.adjustOxyLoss(15 * removed)
	M.sleeping += 1


/obj/item/weapon/reagent_containers/pill/benzilate
	name = "Benzilate pill"
	desc = "You probably shouldn't swallow this."
	icon_state = "pill2"

/obj/item/weapon/reagent_containers/pill/benzilate/New()
	..()
	reagents.add_reagent("benzilate", 50)


/obj/item/weapon/reagent_containers/pill/phenethylamine
	name = "Phenethylamine pill"
	desc = "Smells like... lilacs?"
	icon_state = "pill5"

/obj/item/weapon/reagent_containers/pill/phenethylamine/New()
	..()
	reagents.add_reagent("phenethylamine", 50)


// PILLS THAT WE PROBABLY SHOULDN'T HAVE AAAAAAAAAA. The below is only so they can be included through mapping or "spawn " command. -Carl

/obj/item/weapon/storage/pill_bottle/benzilate
	name = "bottle of Benzilate pills"
	desc = "This just hurts to look at with how many words of caution are scrawled on the label. Better eat all of 'em!"

/obj/item/weapon/storage/pill_bottle/benzilate/New()
	..()
	new /obj/item/weapon/reagent_containers/pill/benzilate( src )
	new /obj/item/weapon/reagent_containers/pill/benzilate( src )
	new /obj/item/weapon/reagent_containers/pill/benzilate( src )
	new /obj/item/weapon/reagent_containers/pill/benzilate( src )
	new /obj/item/weapon/reagent_containers/pill/benzilate( src )
	new /obj/item/weapon/reagent_containers/pill/benzilate( src )
	new /obj/item/weapon/reagent_containers/pill/benzilate( src )

/obj/item/weapon/storage/pill_bottle/phenethylamine
	name = "bottle of Phenethylamine pills"
	desc = "Looks like someone drew a happy face on the label, replacing whatever was previously present."

/obj/item/weapon/storage/pill_bottle/phenethylamine/New()
	..()
	new /obj/item/weapon/reagent_containers/pill/phenethylamine( src )
	new /obj/item/weapon/reagent_containers/pill/phenethylamine( src )
	new /obj/item/weapon/reagent_containers/pill/phenethylamine( src )
	new /obj/item/weapon/reagent_containers/pill/phenethylamine( src )
	new /obj/item/weapon/reagent_containers/pill/phenethylamine( src )
	new /obj/item/weapon/reagent_containers/pill/phenethylamine( src )
	new /obj/item/weapon/reagent_containers/pill/phenethylamine( src )



////Defoliant////
/datum/reagent/toxin/defoliant
	name = "Defoliant"
	id = "defoliant"
	description = "An exceptionally dangerous substance. Required for Chemical Projectors."
	strength = 95
	var/fire_mult = 55

/datum/reagent/toxin/defoliant/touch_mob(var/mob/living/L, var/amount)
	if(istype(L))
		L.adjust_fire_stacks(amount / fire_mult)

/datum/reagent/toxin/defoliant/affect_touch(var/mob/living/carbon/M, var/alien, var/removed)
	M.take_organ_damage(0, removed * 0.1)
	if(prob(10 * fire_mult))
		M.pl_effects()
/*
/datum/reagent/toxin/defoliant/touch_turf(var/turf/simulated/T)
	if(!istype(T))
		return
	T.assume_gas("phoron", ceil(volume/2), T20C)
	for(var/turf/simulated/floor/target_tile in range(0,T))
		target_tile.assume_gas("phoron", volume/2, 400+T0C)
		spawn (0) target_tile.hotspot_expose(700, 400)
	remove_self(volume)
*/
/datum/reagent/toxin/defoliant/affect_blood(var/mob/living/carbon/M, var/alien, var/removed)
	..()
	if(alien == IS_SLIME)
		M.adjust_fire_stacks(removed * 10)
		if(prob(10))
			to_chat(M, "<span class='critical'>You feel something boiling within you!</span>")
			spawn(rand(30, 60))
				M.IgniteMob()

//Cont
/obj/item/weapon/reagent_containers/glass/beaker/vial/defoliant
	name = "vial (defoliant)"
	prefill = list("defoliant" = 30)