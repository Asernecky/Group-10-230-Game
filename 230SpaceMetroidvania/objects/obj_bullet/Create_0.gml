image_xscale = 0.15;
image_yscale = 0.15;
bullet_speed = 8;

if(obj_player.facing == -1)
{
	direction = 0;
	hspeed = -bullet_speed;
	vspeed = 0
}

else if (obj_player.facing == 1)
{	
	direction = 180;
	hspeed = bullet_speed;
	vspeed = 0;
}
else if (obj_player.facing == 0){
	direction = 90;
	vspeed = -bullet_speed;
	hspeed = 0;
}

audio_play_sound(snd_gun, 1, false);