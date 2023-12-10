/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3E8AE6B4
/// @DnDArgument : "var" "Cooldown"
if(Cooldown == 0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1A523BC1
	/// @DnDParent : 3E8AE6B4
	/// @DnDArgument : "var" "facing"
	/// @DnDArgument : "value" "1"
	if(facing == 1)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 135EF5C6
		/// @DnDParent : 1A523BC1
		/// @DnDArgument : "xpos" "40"
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos" "24"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "obj_bullet"
		/// @DnDSaveInfo : "objectid" "obj_bullet"
		instance_create_layer(x + 40, y + 24, "Instances", obj_bullet);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3EB1809F
		/// @DnDParent : 1A523BC1
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "Cooldown"
		Cooldown = 1;
	
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 52C6F94F
		/// @DnDParent : 1A523BC1
		/// @DnDArgument : "steps" "0.25 * room_speed"
		alarm_set(0, 0.25 * room_speed);
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 28C30BB8
	/// @DnDParent : 3E8AE6B4
	/// @DnDArgument : "var" "facing"
	/// @DnDArgument : "value" "-1"
	if(facing == -1)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 07155563
		/// @DnDParent : 28C30BB8
		/// @DnDArgument : "xpos" "10"
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos" "24"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "obj_bullet"
		/// @DnDSaveInfo : "objectid" "obj_bullet"
		instance_create_layer(x + 10, y + 24, "Instances", obj_bullet);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3DB00D87
		/// @DnDParent : 28C30BB8
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "Cooldown"
		Cooldown = 1;
	
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 798D7D67
		/// @DnDParent : 28C30BB8
		/// @DnDArgument : "steps" "0.25 * room_speed"
		alarm_set(0, 0.25 * room_speed);
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 77AE1215
	/// @DnDParent : 3E8AE6B4
	/// @DnDArgument : "var" "facing"
	if(facing == 0)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5573D491
		/// @DnDParent : 77AE1215
		/// @DnDArgument : "var" "sprite_index"
		/// @DnDArgument : "value" "PlayerSpriteIdleUpL"
		if(sprite_index == PlayerSpriteIdleUpL)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 50D226FA
			/// @DnDParent : 5573D491
			/// @DnDArgument : "xpos" "10"
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos" "24"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "obj_bullet"
			/// @DnDSaveInfo : "objectid" "obj_bullet"
			instance_create_layer(x + 10, y + 24, "Instances", obj_bullet);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6D2DF901
			/// @DnDParent : 5573D491
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "var" "Cooldown"
			Cooldown = 1;
		
			/// @DnDAction : YoYo Games.Instances.Set_Alarm
			/// @DnDVersion : 1
			/// @DnDHash : 55D0480A
			/// @DnDParent : 5573D491
			/// @DnDArgument : "steps" "0.25 * room_speed"
			alarm_set(0, 0.25 * room_speed);
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 12775F1F
		/// @DnDParent : 77AE1215
		/// @DnDArgument : "var" "sprite_index"
		/// @DnDArgument : "value" "PlayerSpriteWalkUpL"
		if(sprite_index == PlayerSpriteWalkUpL)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 1280E9BA
			/// @DnDParent : 12775F1F
			/// @DnDArgument : "xpos" "10"
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos" "24"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "obj_bullet"
			/// @DnDSaveInfo : "objectid" "obj_bullet"
			instance_create_layer(x + 10, y + 24, "Instances", obj_bullet);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 19288A5F
			/// @DnDParent : 12775F1F
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "var" "Cooldown"
			Cooldown = 1;
		
			/// @DnDAction : YoYo Games.Instances.Set_Alarm
			/// @DnDVersion : 1
			/// @DnDHash : 5E119E05
			/// @DnDParent : 12775F1F
			/// @DnDArgument : "steps" "0.25 * room_speed"
			alarm_set(0, 0.25 * room_speed);
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0242046A
		/// @DnDParent : 77AE1215
		/// @DnDArgument : "var" "sprite_index"
		/// @DnDArgument : "value" "PlayerSpriteIdleUpR"
		if(sprite_index == PlayerSpriteIdleUpR)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 5D1D1340
			/// @DnDParent : 0242046A
			/// @DnDArgument : "xpos" "38"
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos" "24"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "obj_bullet"
			/// @DnDSaveInfo : "objectid" "obj_bullet"
			instance_create_layer(x + 38, y + 24, "Instances", obj_bullet);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 53724399
			/// @DnDParent : 0242046A
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "var" "Cooldown"
			Cooldown = 1;
		
			/// @DnDAction : YoYo Games.Instances.Set_Alarm
			/// @DnDVersion : 1
			/// @DnDHash : 4BD2FF04
			/// @DnDParent : 0242046A
			/// @DnDArgument : "steps" "0.25 * room_speed"
			alarm_set(0, 0.25 * room_speed);
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6617ED6C
		/// @DnDParent : 77AE1215
		/// @DnDArgument : "var" "sprite_index"
		/// @DnDArgument : "value" "PlayerSpriteWalkUpR"
		if(sprite_index == PlayerSpriteWalkUpR)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 689EAB6F
			/// @DnDParent : 6617ED6C
			/// @DnDArgument : "xpos" "38"
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos" "24"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "obj_bullet"
			/// @DnDSaveInfo : "objectid" "obj_bullet"
			instance_create_layer(x + 38, y + 24, "Instances", obj_bullet);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 24180ED3
			/// @DnDParent : 6617ED6C
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "var" "Cooldown"
			Cooldown = 1;
		
			/// @DnDAction : YoYo Games.Instances.Set_Alarm
			/// @DnDVersion : 1
			/// @DnDHash : 4DDBCB7F
			/// @DnDParent : 6617ED6C
			/// @DnDArgument : "steps" "0.25 * room_speed"
			alarm_set(0, 0.25 * room_speed);
		}
	}
}