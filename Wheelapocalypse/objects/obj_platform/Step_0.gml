/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 346AFC6D
/// @DnDComment : // Checks the game is not currently paused
/// @DnDArgument : "expr" "obj_game_manager.current_game_state != GAME_STATE.PAUSED"
if(obj_game_manager.current_game_state != GAME_STATE.PAUSED){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 28AE06F0
	/// @DnDComment : // Moves the pickup at the games current speed
	/// @DnDParent : 346AFC6D
	/// @DnDArgument : "expr" "- (obj_game_manager.current_speed * 1.0)"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "x"
	x += - (obj_game_manager.current_speed * 1.0);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2539E874
	/// @DnDComment : // Checks if pickup has gone off screen to the left
	/// @DnDParent : 346AFC6D
	/// @DnDArgument : "var" "x"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "-169"
	if(x < -169){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 34505D82
		/// @DnDComment : // Destroys the pickup object
		/// @DnDParent : 2539E874
		instance_destroy();}

	/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 76E01EAB
	/// @DnDComment : // Sets the animation speed to playing when not paused
	/// @DnDParent : 346AFC6D
	image_speed = 1;}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 0E3B859D
else{	/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 4E57E184
	/// @DnDComment : // Sets the animation speed to stop when game is paused
	/// @DnDParent : 0E3B859D
	/// @DnDArgument : "speed" "0"
	image_speed = 0;}