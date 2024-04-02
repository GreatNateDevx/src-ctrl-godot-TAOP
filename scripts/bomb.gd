extends Node2D
var hit = null

func _on_explosion_body_entered(body):
	hit = body.hp
	print(hit)
	print(body)
	hit = hit - 50
	body.hp_bar.value = hit
	print(hit)
