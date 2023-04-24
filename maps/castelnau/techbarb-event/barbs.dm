/obj/item/projectile/plasma/stun/barb
	damage = 5
	agony = 10

/obj/item/projectile/plasma/barb
	armor_penetration = 25
	damage = 20

/obj/item/natural_weapon/spear
	name = "spear"
	gender = NEUTER
	attack_verb = list("sliced")
	force = 10
	damtype = DAMAGE_BRUTE
	edge = TRUE
	show_in_message = TRUE

/obj/item/gun/energy/k342/barb
	name = "old K342 Barrakuda"
	desc = "K342 Barrakuda is the latest plasma weapon created by NanoTrasen. It can fire several types of charges: stunning, incendiary and lethal. This one is pretty old."
	init_firemodes = list(
		list(mode_name="stun charge", projectile_type=/obj/item/projectile/plasma/stun/barb, charge_cost=20, fire_delay=4, projectile_color=COLOR_YELLOW),
		list(mode_name="plasma charge", projectile_type=/obj/item/projectile/plasma/barb, charge_cost=20, fire_delay=4, projectile_color=COLOR_BLUE_LIGHT),
		list(mode_name="heavy plasma charge", projectile_type=/obj/item/projectile/plasma/heavy, charge_cost=50, fire_delay=8, projectile_color=COLOR_RED)
	)

/datum/say_list/techbarb
	speak = list("����-����, ������ ��� ����!",
				"������� ����� ������� �������� ����� � ����.",
				"��� �� ������ ��������...")
	emote_see = list("������ ���������� ����������", "������ ������", "������� ����� ������")

	say_understood = list("�����!")
	say_cannot = list("�� ����!")
	say_maybe_target = list("����������, �����!")
	say_got_target = list("�� - ����� �����������, ��������!")
	say_threaten = list("����� ���� ������!")
	say_stand_down = list("��� ���.")
	say_escalate = list("�� ������ ���� ����� ������...", "��� ���� ���������� ������� ������!")

	threaten_sound = 'sound/weapons/TargetOn.ogg'
	stand_down_sound = 'sound/weapons/TargetOff.ogg'

/mob/living/simple_animal/hostile/sol_military/barbarian
	name = "armored tech-barbarian"
	icon = 'maps/castelnau/techbarb-event/barbs.dmi'
	icon_state = "barbarmor"
	icon_living = "barbarmor"
	icon_dead = "barb_death"
	icon_gib = "barb_death"
	dropped_weapon = list(/obj/item/gun/energy/laser/bad)
	choosen_weapon = /obj/item/gun/energy/laser/bad
	faction = "barbarians"

	say_list_type = /datum/say_list/techbarb

/mob/living/simple_animal/hostile/sol_military/barbarian/death(gibbed, deathmessage, show_dead_message)
	..(gibbed, deathmessage, show_dead_message)
	new /obj/item/clothing/suit/armor/pcarrier/medium (src.loc)
	if(dropped_weapon)
		new choosen_weapon (src.loc)
	return

/mob/living/simple_animal/hostile/sol_military/barbarian/shield
	name = "tech-armored tech-barbarian"
	icon_state = "barbshield"
	icon_living = "barbshield"
	dropped_weapon = list(/obj/item/gun/energy/k342/barb)
	choosen_weapon = /obj/item/gun/energy/k342/barb
	maxHealth = 180
	health = 180

/mob/living/simple_animal/hostile/sol_military/barbarian/shield/death(gibbed, deathmessage, show_dead_message)
	..(gibbed, deathmessage, show_dead_message)
	new /obj/item/clothing/suit/armor/shieldarmor (src.loc)
	if(dropped_weapon)
		new choosen_weapon (src.loc)
	return

/mob/living/simple_animal/hostile/russian/barbmelee //normal one was broken for some reason and now I have to shitcode
	name = "naked tech-barbarian"
	desc = "Your enemy."
	icon = 'maps/castelnau/techbarb-event/barbs.dmi'
	icon_state = "barbmelee"
	icon_living = "barbmelee"
	icon_dead = "barb_death"
	icon_gib = "barb_death"
	turns_per_move = 10
	response_help = "pokes"
	response_disarm = "shoves"
	response_harm = "hits"
	speed = 4
	maxHealth = 90
	health = 90
	harm_intent_damage = 5
	can_escape = TRUE
	a_intent = I_HURT
	dropped_weapon = list(/obj/item/material/twohanded/spear)
	natural_weapon = /obj/item/natural_weapon/spear
	unsuitable_atmos_damage = 15
	faction = "barbarians"
	status_flags = CANPUSH
	corpse = null

/mob/living/simple_animal/hostile/russian/barbmelee/death(gibbed, deathmessage, show_dead_message)
	..(gibbed, deathmessage, show_dead_message)
	if(dropped_weapon)
		new dropped_weapon (src.loc)