class_name Slime
extends CharacterBody2D

@onready
var slime_movement_animations: AnimatedSprite2D = $slime_movement_animations

@onready
var slime_movement_state_machine: Node = $slime_movement_state_machine

func _ready() -> void:
	slime_movement_state_machine.init(self, slime_movement_animations)

func _physics_process(delta: float) -> void:
	slime_movement_state_machine.process_physics(delta)

func _process(delta: float) -> void:
	slime_movement_state_machine.process_frame(delta)
