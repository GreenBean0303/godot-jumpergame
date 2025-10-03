extends Node

var coins_collected : int = 0
var facts : Array = [
	"Kosmeetiku eriala oli aastal 2025 kõige populaarsem",
	"VOCO on Eesti suurim kutsekool",
	"Vähemalt pool õppeajast moodustub praktiline õpe"
]

signal show_fact_popup(fact_text: String)

func collect_coin() -> void:
	coins_collected += 1
	var random_fact = facts[randi() % facts.size()]
	emit_signal("show_fact_popup", random_fact)
	print("Coins collected: ", coins_collected)
