/// @description Insert description here
// You can write your code in this editor

// Get the player object
var playerObj = instance_nearest(x, y, obj_player);

// Check if playerObj exists (to avoid errors if there's no player object)
if (playerObj)
{
    // Calculate direction towards the player
    var dirToPlayer = point_direction(x, y, playerObj.x, playerObj.y);

    // Set the speed and direction to move towards the player

    xspd = -move_speed * lengthdir_x(1, dirToPlayer);
    yspd = -move_speed * lengthdir_y(1, dirToPlayer);
}
else
{
    // Player object not found, stop moving
    xspd = 0;
    yspd = 0;
}

// Update the enemy's position
x += xspd;
y += yspd;


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
	
	if (sprite_index == spr_bug and collision == 1){
		//show_debug_message("Entered the if");
		sprite_index = spr_bugR;
		facing = -1;
		collision = 0;
	}
		
		
	if (sprite_index == spr_bugR and collision == 1){
		//show_debug_message("Entered the if");
		sprite_index =spr_bug;
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
		instance_create_layer(x-36, y-36, "Instances", obj_bug_death);
		instance_destroy();	
	}

if xspd > 0{
	sprite_index = spr_bugR;
} else {
	sprite_index = spr_bug;
}

//x += xspd;
//y += yspd;