velv += grav;

if(momento == "off")
{
	//código do off
	sprite_index = spr_bomba;
}
else if(momento ==  "on")
{
	//código do on
	sprite_index = spr_bomba_on;
	
	//Rodando o Boom_timer
	
	if(boom_timer > 0)
	{
		boom_timer --;
		
	}
	else 
	{
		//Se o boom_timer for 0 ou menos
		momento = "boom";
	}
}
else if(momento == "boom")
{
	//código do boom
	
	//Chegar se ele já mudou de sprite
	if(sprite_index != spr_bomba_boom)
	{
		//Ou seja, eu acabei de chegar nesse momento
	
		sprite_index = spr_bomba_boom;
		
		//Começo a animação do zero
		image_index = 0;
	}
	
	//Se eu terminei a animação, eu me destruo
	if(image_index >= image_number - 1)
	{
		instance_destroy();
	}
	
	//Checando se eu estou colidindo com o player
	var _player = instance_place(x, y, obj_player);
	
	if(_player)
	{
		
		with(_player)//todo codigo colocado aqui, tá rodando dentro de player
		{
			dano = true; //recebo dano 
			//Dando o valor do timer dano 
			timer_dano = tempo_dano;
			inv_timer = inv_tempo;
		}
	}

}

