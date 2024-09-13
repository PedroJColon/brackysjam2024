extends Area2D

@export var player: CharacterBody2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	look_at(player.position)
	# if position is less than player x, move it forward
	# if oppsoite move it back
	# if y pos is less than player y, move it down
	# if y pos is more than player y, move it up
	# note: keep in mind character body
	if position < player.position:
		position.x += 100 * delta
	if position > player.position:
		position.x -= 100 * delta
		#position.y -= player.position.y
	pass
