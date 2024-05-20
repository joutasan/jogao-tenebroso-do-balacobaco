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
	if (image_index > 0)
	{
			if (direcao==1)
			{
				Atkhit = instance_create_layer(x+90, y-20, "Instances_1", hit_obj);
				Atkhit.creator = self
			}
			else
			{
				instance_create_layer(x-140, y-20, "Instances_1", hit_obj);
			}
	}
}
