extends KinematicBody2D
class_name Player

func _physics_process(_delta):
	if Input.is_action_pressed("right"):
		move_and_slide(Vector2(100, 0))
	elif Input.is_action_pressed("left"):
		move_and_slide(Vector2(-100, 0));

func _on_Area2D_area_entered(area):
	if area.get_parent() is Bullet:
		# death codem, in this ex im just reloading the scene
		get_tree().reload_current_scene()
