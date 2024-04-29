function MovementP1(){
input_scr()	
if rk
{
	hspd= 10
	image_xscale =-2.5
}
if lk
{
	hspd= -10
	image_xscale =2.5
}
if (!rk && !lk) || (rk && lk)
{
	hspd= 0
}

//Gravidade
if (place_meeting(x,y+1,chao))
{
	vspd = 0
	if uk
	{		
		persona.sprite_index = jump;
		vspd= -30
	}
}
else
{
	if vspd < 45 //Velocidade maxima de aceleração vertical
	{
		vspd += grav;
		if vspd > 0
		{
				persona.sprite_index = fall;
	    }
	}
}

//colisor vertical
if (place_meeting(x,y+vspd,chao))
{
	while (!place_meeting(x,y+sign(vspd), chao))
	{
		y+=sign(vspd);
		persona.sprite_index = base;
	}
	vspd = 0
}
y+=vspd

//colisor horizontal
if (place_meeting(x+hspd,y,wall))
{
	while (!place_meeting(x+sign(hspd),y,wall))
	{
		x+=sign(hspd);
	}
	hspd=0
	
}
x+=hspd
}