extends Node2D
@onready var player = get_parent().get_node("main/phoenix")
func _on_area_2d_area_entered(area):
	if area.name == "sword" or area.name == "hurtbox" and area.get_parent().is_player == true :
		area.get_parent().hp = area.get_parent().hp + 20
		if area.get_parent().hp >100:
			area.get_parent().hp = 100 
		queue_free()
	else:
		pass
