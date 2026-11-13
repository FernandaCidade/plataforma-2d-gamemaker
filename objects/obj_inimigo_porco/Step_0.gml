//Checando se o porco esta no chão
var _chao = place_meeting(x,y + 1,obj_chao);

if(_chao) 
{	
	//vou diminuir o tempo de decidir andar
	tempo_decidir_andar -=1;
	
	
	//Se o tempo acabou, eu decido se eu vou andar
	
	if(tempo_decidir_andar <= 0)
	{
		andando = choose(true, false);
		
		//Escolhendo a direção se ele decidiu andar
		
		//Checando se eu estou andando
		if(andando)
		{
			//Se eu estou no chão, eu ando para um lado
			velh = choose(vel, -vel);
				
		}
		else
		{
			velh = 0;
		}
	
		show_debug_message("DIREÇÃO: " + string(velh));
		
		//Resetando o tempo
		tempo_decidir_andar = room_speed * 2;		
	}
	
	
	
	
	//Controlando a animação do inimigo
	if(velh != 0)
	{
		sprite_index = spr_inimigo_porco_run;
		image_xscale = sign(velh);
	}
	else
	{
		sprite_index = spr_inimigo_porco_idle;
	}
	
	
}
else //Se eu não estou no chão, eu aplico a gravidade
{
	velv += grav;
	velh = 0;
	
	if(velh != 0)
	{
		image_xscale = sign(velh);
	}
}

