//get inputs from keyboard
rightKey = keyboard_check(vk_right);
rightKeyRelease = keyboard_check_released(vk_right);
leftKey = keyboard_check(vk_left);
leftKeyRelease = keyboard_check_released(vk_left);
jumpKeyPressed = keyboard_check_pressed(vk_space);
upKey = keyboard_check(vk_up);
upKeyRelease =  keyboard_check_released(vk_up);

//get xpsd and yspd

	xspd = (rightKey - leftKey) * move_speed;
	//apply grav
	yspd += grav; 
	
	if jumpKeyPressed && place_meeting(x, y+1, obj_metal_tile){
		yspd = jumpSpd;
		
		if sprite_index==PlayerSpriteIdleR or sprite_index==PlayerSpriteWalkR{
			sprite_index=PlayerSpriteJumpR;
		}
		
		if sprite_index==PlayerSpriteIdleL or sprite_index==PlayerSpriteWalkL{
			sprite_index=PlayerSpriteJumpL;
		}
	}
	
	if rightKey{
		sprite_index = PlayerSpriteWalkR;
		facing = 1; 
	}
	
	if rightKeyRelease{
		sprite_index = PlayerSpriteIdleR;
	
	}
	
	if leftKey{
		sprite_index = PlayerSpriteWalkL
		facing = -1;
	}
	
	if leftKeyRelease{
		sprite_index = PlayerSpriteIdleL
	
	}
	
	if upKey {
		if sprite_index == PlayerSpriteIdleR {
			sprite_index = PlayerSpriteIdleUpR;
			facing = 0; 
		}
		
		if sprite_index == PlayerSpriteWalkR{
			sprite_index = PlayerSpriteWalkUpR;
			facing = 0; 
		}
		
		if sprite_index==PlayerSpriteIdleL{
			sprite_index=PlayerSpriteIdleUpL;
			facing = 0; 
		}
		
		if sprite_index == PlayerSpriteWalkL{
			sprite_index = PlayerSpriteWalkUpL;
			facing = 0; 
		}
	}
	
	if upKeyRelease {
		if sprite_index == PlayerSpriteIdleUpR{
			sprite_index = PlayerSpriteIdleR;
			facing = 1;
		}
		
		if sprite_index == PlayerSpriteIdleUpL{
			sprite_index = PlayerSpriteIdleL;
			facing = -1;
		}
	
	}
	
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
		
		xspd = 0;
		
	}
	
	//y coll
	
	if place_meeting(x + xspd, y + yspd, obj_metal_tile){
		var _pixelCheck = sign(yspd);
		while !place_meeting(x + xspd, y + _pixelCheck, obj_metal_tile){
			y += _pixelCheck;
		}
		
		yspd = 0;
	}
	
//Game over
if(hp<=0){
	room_restart();	
}

// Add a variable to track whether the text is currently displayed
var display_timer = 0;

// Check if the display_timer is greater than 0
if (display_timer > 0) {
    // Display the text
    draw_set_font(fnt_menu);
    draw_set_color(c_white);
    draw_set_halign(fa_left);
    draw_text(x, y-46, "Key collected");
    
    // Decrease the display_timer
    display_timer -= 1;
} else {
    // If the timer is 0 or less, no text is displayed
}

// Rest of your player's step code goes here

// Assuming the collision code for picking up the key is here
if (place_meeting(x, y, obj_key)) {
    // Key pickup code goes here
	show_message("Key collected")
    // Set the display_timer to 180 frames (3 seconds at 60 fps)
    display_timer = 180;
}


//move player
x += xspd;
y += yspd;