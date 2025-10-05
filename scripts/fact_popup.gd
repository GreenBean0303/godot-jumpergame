extends CanvasLayer

@onready var label = $Panel/Label

func _ready():
	hide()

func show_fact(fact_text: String):
	label.text = fact_text
	show()
	await get_tree().create_timer(10.0).timeout
	hide()
