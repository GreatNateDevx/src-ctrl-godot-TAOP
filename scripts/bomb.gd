extends Node2D
var entered = false
func _on_explosion_body_entered(body):
	entered = true
	await get_tree().create_timer(3).timeout
	if entered == true:
		body.hp = body.hp - 50
	queue_free()


func _on_explosion_body_exited(_body):
	entered = false
