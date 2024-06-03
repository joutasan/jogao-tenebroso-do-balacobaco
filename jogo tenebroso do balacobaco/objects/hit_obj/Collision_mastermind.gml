if (other.id != creator && canHit)
{
	canHit = false
	instance_destroy();
	other.hp -= 1;
}