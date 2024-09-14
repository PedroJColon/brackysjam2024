extends CharacterBody2D

var bullet = preload("res://scenes/bullet.tscn")
const SPEED: float = 300

func _ready() -> void:
	pass
	
func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton and visible == true:
		Input.mouse_mode = Input.MOUSE_MODE_CONFINED
	pass
	
func _physics_process(delta: float) -> void:
	if visible == true:
		var dir = Input.get_vector("move_left", "move_right", "move_up", "move_down")
		if Input.is_action_just_pressed("fire"):
			var b = bullet.instantiate()
			b.set_bullet($BulletSpawn.global_position, rotation)
			get_tree().root.add_child(b)
		velocity = dir * SPEED;
		move_and_slide()
		look_at(get_global_mouse_position())


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("bullet"):
		body.queue_free()
		$Health.decrement_health(1)
		if $Health.check_state():
			visible = false
	pass # Replace with function body.
