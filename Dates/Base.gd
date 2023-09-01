@tool
extends Node2D

class_name Date

@export var DatingPower = 50
@export var FriendshipPower = 50
@export var OPinion = 50

@export var enabled = {"Date":true, "Friendship":true, "Opinion":true}

func _process(delta):
	if enabled.Date:
		$DP.show()
		$DP.value = DatingPower
	else: $DP.hide()
	if enabled.Friendship:
		$FP.show()
		$FP.value = FriendshipPower
	else: $FP.hide()
	if enabled.Opinion:
		$OP.show()
		$OP.value = OPinion
	else: $OP.hide()
