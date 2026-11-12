extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var tween = create_tween()

	tween.tween_property($Sprite2D, "scale", Vector2(2,2), 1.0)
