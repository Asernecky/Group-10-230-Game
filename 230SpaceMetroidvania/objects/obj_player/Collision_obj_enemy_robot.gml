/// @description Insert description here
// You can write your code in this editor

hp -= 1;


//if (y < other.y - 16)
//{
 //   yspd = jumpSpd;
//}
//else
//{
if (other.x > x - 16)
    {
		hspeed = other.facing * knockback;
		yspd =  -knockback;
		xspd = hspeed;
    }
    else if (other.x < x + 16)
    {
        hspeed = other.facing * -knockback;
		yspd =  -knockback;
		xspd = hspeed;
    }


image_blend = c_red;
alarm[2] = 10;
alarm[3] = 10;