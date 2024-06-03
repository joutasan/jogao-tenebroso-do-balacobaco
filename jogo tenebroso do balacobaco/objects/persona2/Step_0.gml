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
}