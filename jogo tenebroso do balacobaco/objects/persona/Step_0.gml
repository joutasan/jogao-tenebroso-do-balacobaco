if player == 1
{
    MovementP1();
}
else
{
    MovementP2();
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
				instance_create_layer(x-140, y-20, "Instances_1", hit_obj);
			}
			canHit = false
			Atkhit.creator = id
	}
}
