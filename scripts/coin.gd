extends Interactible

signal coin_collected

func _on_body_entered(_body: CharacterBody2D) -> void:
	if _body.is_in_group("player"):
		emit_signal("coin_collected")
		queue_free()
