if player == 1
{
    MovementP1();
}
else
{
    MovementP2();
}

if (hp <= 0)
{
	instance_destroy();
	audio_play_sound(Sound2,0,true)
}

if (sprite_index == soco)
{
	if (image_index > 0 && canHit)
	{
			if (direcao==1)
			{
				Atkhit = instance_create_layer(x+90, y-20, "Instances_1", hit_obj);
				
			}
			else
			{
				Atkhit = instance_create_layer(x-140, y-20, "Instances_1", hit_obj);
			}
			canHit = false
			Atkhit.creator = id
	}
}
