extends CanvasLayer

var coins = 0

func _ready():
	$Coins.text = String(coins)

func _physcis_process(_delta):
	if coins == 7:
		get_tree().change_scene("res://Level1.tscn")

func _on_coin_collected():
	coins = coins + 1
	_ready()
