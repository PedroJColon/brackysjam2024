extends Node2D

func _process(delta: float) -> void:
	if $Enemies.get_child_count() <= 0:
		get_tree().change_scene_to_file("res://scenes/game_over.tscn")
