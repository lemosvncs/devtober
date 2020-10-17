extends Control
tool

var cardname:= "moveL"
onready var cardInfo = CardsDatabase.DATA[CardsDatabase.get(cardname)]
onready var cardImage = str("res://Assets/Cards/", cardInfo[0], "/", cardname, ".png")

func _ready():
	
	$H2/V1.add_constant_override("separation", 7) # dá uma margem pros elementos
	$H2/V1/CardName.text = cardInfo[2]
	$Image.texture = load(cardImage)
	$H2/V1/Description.text = cardInfo[3]
	
	print(cardInfo)
	#print(cardInfo)
	#var cardSize = rect_size
	#print(cardSize)
	#$Border.scale *= cardSize/$Border.texture.get_size()
	#$HBox/VBox/Card.texture = load(cardImage)
	#$HBox/Card.scale *= cardSize/$HBox/Card.texture.get_size()

