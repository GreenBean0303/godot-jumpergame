extends Node

var coins_collected : int = 0
var facts : Array = [
	"Kosmeetiku eriala oli aastal 2025 kõige populaarsem",
	"VOCO on Eesti suurim kutsekool",
	"Vähemalt pool õppeajast moodstub praktiline õpe"
]

@onready var fact_popup = $"../FactPopup/CanvasLayer"

func _ready():
	await get_tree().process_frame
	for coin in get_tree().get_nodes_in_group("coin"):
		if coin.has_signal("coin_collected"):
			coin.coin_collected.connect(_on_coin_collected)

func _on_coin_collected():
	coins_collected += 1
	var random_fact = facts[randi() % facts.size()]
	if fact_popup:
		fact_popup.show_fact(random_fact)
	print("Coin collected! Total: ", coins_collected)
