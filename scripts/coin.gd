extends Interactible

signal coin_collected

func _ready():
	super._ready() 
	add_to_group("coin")

func _on_body_entered(_body: CharacterBody2D) -> void:
	if _body.is_in_group("player"):
		coin_collected.emit()
		queue_free()
