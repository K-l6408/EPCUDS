extends Node2D

var ha = 0
var ma = 0

var hv = 0
var mv = 0

func _ready():
	$BG/H.rotation = randf_range(-PI, PI)
	$BG/M.rotation = randf_range(-PI, PI)
	$Textbox.start(load("res://Dialogue/test.dialogue"), "test")

func _process(delta):
	ha += randf_range((-1-ha)/20., (1-ha)/20.)
	ma += randf_range((-3-ma)/20., (3-ma)/20.)
	hv += ha * delta
	mv += ma * delta
	hv = clamp(hv,  -5,  5)
	mv = clamp(mv, -15, 15)
	$BG/H.rotation += hv * delta
	$BG/M.rotation += mv * delta
