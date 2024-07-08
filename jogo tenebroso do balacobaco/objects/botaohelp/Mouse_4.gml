/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Inherit the parent event
event_inherited();

if (instance_exists(controles))
{
	instance_destroy(controles);
}

else
{
	instance_create_layer(480, 576, "Instances", controles);
	controles.image_xscale = 0.5
	controles.image_yscale = 0.5
}