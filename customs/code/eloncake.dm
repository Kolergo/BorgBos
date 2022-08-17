/obj/item/clothing/suit/storage/toggle/eloncake
	name = "vintage army greatcoat"
	desc = "A greatcoat in a very old style. It was probably stolen from the history museum."
	valid_accessory_slots = list(ACCESSORY_SLOT_ARMBAND,ACCESSORY_SLOT_MEDAL,ACCESSORY_SLOT_INSIGNIA,ACCESSORY_SLOT_RANK,ACCESSORY_SLOT_DEPT)
	icon = 'customs/icons/obj/custom_items_obj.dmi'
	icon_state = "vintagecoat"
	item_icons = list(slot_wear_suit_str = 'customs/icons/mob/custom_items_mob.dmi')
	accessories = list(/obj/item/clothing/accessory/solgov/rank/eloncake)

/obj/item/clothing/accessory/solgov/rank/eloncake
	name = "ranks (Group Captain)"
	desc = "A replica of insignia denoting the rank of Royal Air Force Group Captain, whatever that is."
	on_rolled = list("down" = "none")
	icon = 'customs/icons/obj/custom_items_obj.dmi'
	w_class = ITEM_SIZE_TINY
	accessory_icons = list(slot_w_uniform_str = 'customs/icons/mob/custom_items_mob.dmi', slot_wear_suit_str = 'customs/icons/mob/custom_items_mob.dmi')
	icon_state = "britishranks"

/obj/item/clothing/suit/storage/det_trench/ft/elloncake
	name = "long coat"
	desc = "You certainly wouldn't wear it if you were loved"
	valid_accessory_slots = list(ACCESSORY_SLOT_ARMBAND,ACCESSORY_SLOT_MEDAL,ACCESSORY_SLOT_INSIGNIA,ACCESSORY_SLOT_RANK,ACCESSORY_SLOT_DEPT)
	icon = 'proxima/icons/obj/clothing/icon_suit.dmi'
	icon_state = "rangercoat"
	item_state = "soldiercoat"
	item_icons = list(slot_wear_suit_str = 'proxima/icons/mob/onmob/mob_suit.dmi')