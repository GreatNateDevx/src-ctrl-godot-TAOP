extends Node2D
func _physics_process(_delta):
	if Input.is_anything_pressed():
		get_tree().quit()
