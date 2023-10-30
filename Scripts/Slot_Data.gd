extends Resource
class_name Slot_Data

const MAX_STACK_SIZE: int = 99

@export var item_data: Item_Data
@export_range(1, MAX_STACK_SIZE) var quantity: int = 1 : set = set_quantity

func set_quantity(value: int) -> void:
	quantity = value;
	if quantity > 1 and not item_data.stackable:
		quantity = 1
		push_error("%s is not stackable, setting quantity to 0" % item_data.name)
