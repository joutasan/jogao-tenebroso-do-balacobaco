// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function MovementP2(){
	Input_scr2()
if rk
{
	hspd= 10
	image_xscale =-2.5
	direcao = 1
}
if lk
{
	hspd= -10
	image_xscale =2.5
	direcao = 0
}
if (!rk && !lk) || (rk && lk)
{
	hspd= 0
}
if atk_k && canAttack
{
	persona2.sprite_index = soco1
	canAttack = false
	alarm[0] = 60

}

//Gravidade
if (place_meeting(x,y+1,chao))
{
	vspd = 0
	if uk
	{				
		persona2.sprite_index = jump1;
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
				persona2.sprite_index = fall1;
	    }
	}
}

//colisor vertical
if (place_meeting(x,y+vspd,chao))
{
	while (!place_meeting(x,y+sign(vspd), chao))
	{
		y+=sign(vspd);
		persona2.sprite_index = base1;
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