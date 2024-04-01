Input_scr()
if rk
{
	x+= 10
}
if lk
{
	x-= 10
}

//Gravidade
if (place_meeting(x,y+1,chao))
{
	vspd = 0
}
else
{
	if vspd < 10 //Velocidade maxima de aceleração vertical
	{
		vspd += grav;
	}
}

//colisor vertical
if (place_meeting(x,y+vspd,chao))
{
	while (!place_meeting(x,y+sign(vspd), chao))
	{
		y+=sign(vspd);
	}
	vspd = 0
}
y+=vspd