/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 3CE261EF
/// @DnDComment : // Check if the game is in the tutorial
/// @DnDArgument : "expr" "obj_game_manager.current_game_state == GAME_STATE.TUTORIAL"
if(obj_game_manager.current_game_state == GAME_STATE.TUTORIAL){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0A77F92B
	/// @DnDComment : // Set the alpha value to zero (invisible)
	/// @DnDParent : 3CE261EF
	/// @DnDArgument : "var" "image_alpha"
	image_alpha = 0;}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 265542D2
else{	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 00B0A688
	/// @DnDComment : // Lerp the alpha value to visible
	/// @DnDParent : 265542D2
	/// @DnDArgument : "expr" "lerp(image_alpha, 1.0, 0.05)"
	/// @DnDArgument : "var" "image_alpha"
	image_alpha = lerp(image_alpha, 1.0, 0.05);}

/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 3136AA95
/// @DnDComment : // Draw the gui background
draw_self();

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
/// @DnDVersion : 1
/// @DnDHash : 4B42D2A3
/// @DnDComment : // Draw gold coin icon
/// @DnDArgument : "x" "12"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-17"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "sprite" "spr_gold_icon"
/// @DnDSaveInfo : "sprite" "spr_gold_icon"
draw_sprite(spr_gold_icon, 0, x + 12, y + -17);

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 7189812F
/// @DnDComment : // Setup the coin text
/// @DnDArgument : "var" "_colour_coin_text"
/// @DnDArgument : "value" "make_color_rgb(255, 218, 55)"
var _colour_coin_text = make_color_rgb(255, 218, 55);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 4FCDB8E1
/// @DnDArgument : "color" "_colour_coin_text"
/// @DnDArgument : "alpha" "false"
draw_set_colour(_colour_coin_text & $ffffff);draw_set_alpha(1);

/// @DnDAction : YoYo Games.Drawing.Set_Alpha
/// @DnDVersion : 1
/// @DnDHash : 26933508
/// @DnDArgument : "alpha" "image_alpha"
draw_set_alpha(image_alpha);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 421FEFC6
/// @DnDComment : // Set alignment
draw_set_halign(fa_left);
draw_set_valign(fa_top);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 305B4E3D
/// @DnDComment : // Draw the current gold value
/// @DnDArgument : "x" "80"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-8"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" """"
/// @DnDArgument : "var" "parse_value(obj_game_manager.current_gold) + "K""
draw_text(x + 80, y + -8, string("") + string(parse_value(obj_game_manager.current_gold) + "K"));

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 65FFFF71
/// @DnDComment : // Reset the colour options
/// @DnDArgument : "color" "c_white"
/// @DnDArgument : "alpha" "false"
draw_set_colour(c_white & $ffffff);draw_set_alpha(1);

/// @DnDAction : YoYo Games.Drawing.Set_Alpha
/// @DnDVersion : 1
/// @DnDHash : 0B4CE479
draw_set_alpha(1);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 27C9AD16
/// @DnDComment : // Reset the alignment
draw_set_halign(fa_left);
draw_set_valign(fa_top);

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
/// @DnDVersion : 1
/// @DnDHash : 1E9ACB43
/// @DnDArgument : "x" "-50"
/// @DnDArgument : "y" "50"
/// @DnDArgument : "sprite" "spr_enemy_ground"
/// @DnDSaveInfo : "sprite" "spr_enemy_ground"
draw_sprite(spr_enemy_ground, 0, -50, 50);