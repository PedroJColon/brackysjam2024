extends CharacterBody2D

var bullet = preload("res://scenes/bullet.tscn")
const SPEED: float = 300

func _ready() -> void:
	pass
	
func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		Input.mouse_mode = Input.MOUSE_MODE_CONFINED
	pass
	
func _physics_process(delta: float) -> void:
	var dir = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	if Input.is_action_just_pressed("fire"):
		var b = bullet.instantiate()
		b.set_bullet($BulletSpawn.global_position, rotation)
		get_tree().root.add_child(b)
	velocity = dir * SPEED;
	move_and_slide()
	look_at(get_global_mouse_position())
	pass
