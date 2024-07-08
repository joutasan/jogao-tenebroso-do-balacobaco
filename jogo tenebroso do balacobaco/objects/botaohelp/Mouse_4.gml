/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Inherit the parent event
event_inherited();

if (instance_exists(objeto_controles))
{
	instance_destroy(objeto_controles);
}

else
{
	instance_create_layer(room_width / 2, room_height - 100, "Instances", objeto_controles);
}