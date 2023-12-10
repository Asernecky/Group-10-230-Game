/// @description Insert description here
// You can write your code in this editor

yspd += grav;

//Collision
	//xcoll
	if place_meeting(x + xspd, y, obj_metal_tile)
	{
		
		//move player as close to wall
		var _pixelCheck = sign(xspd);
		while !place_meeting(x + _pixelCheck, y, obj_metal_tile)
		{
			x += _pixelCheck;
		}	
		
		collision = 1;
		xspd = -xspd;
		
	}
	
	if (sprite_index == RobotEnemySpriteL and collision == 1){
		//show_debug_message("Entered the if");
		sprite_index = RobotEnemySpriteR;
		facing = -1;
		collision = 0;
	}
		
		
	if (sprite_index == RobotEnemySpriteR and collision == 1){
		//show_debug_message("Entered the if");
		sprite_index = RobotEnemySpriteL;
		facing = 1;
		collision = 0;
	}
	
	if place_meeting(x + xspd, y + yspd, obj_metal_tile){
		var _pixelCheck = sign(yspd);
		while !place_meeting(x + xspd, y + _pixelCheck, obj_metal_tile){
			y += _pixelCheck;
		}
		
		yspd = 0;
	}
	
	if hp <= 0 {
		instance_create_layer(x-36, y-36, "Instances", obj_robot_death);
		instance_destroy();	
	}


x += xspd;
y += yspd;