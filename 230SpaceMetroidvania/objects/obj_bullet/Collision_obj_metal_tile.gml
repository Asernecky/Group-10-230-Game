/// @description Insert description here
// You can write your code in this editor

if(hspeed < 0){
	instance_create_layer(x+10 , y, "Instances", obj_bullet_impact);
	instance_destroy();
}

if(hspeed > 0){
	instance_create_layer(x-10 , y, "Instances", obj_bullet_impact);
	instance_destroy();
}

if(vspeed < 0){
	instance_create_layer(x , y+10, "Instances", obj_bullet_impact);
	instance_destroy();
}


