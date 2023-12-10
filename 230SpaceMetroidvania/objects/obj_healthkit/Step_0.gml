/// @description Insert description here
// You can write your code in this editor

	yspd += grav; 

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

y+=yspd;