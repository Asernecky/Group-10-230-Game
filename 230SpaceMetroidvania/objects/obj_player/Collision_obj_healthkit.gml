/// @description Insert description here
// You can write your code in this editor



if hp < hp_max{
	instance_destroy(other);
	hp++;
	image_blend = c_green;
	alarm[2] = 10;
}