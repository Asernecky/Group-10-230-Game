/// @description Insert description here
// You can write your code in this editor
move_speed = -1.5;
xspd = move_speed;
yspd = -1;
collision = 0;
hp = 3;
facing = -1;

grav = 0.25;

healthkit = irandom(5);
//default sprite
sprite_index = spr_bug;

sndInstance = audio_play_sound(snd_alien, 1, true);