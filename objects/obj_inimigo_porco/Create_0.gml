//Herdando info do pai
event_inherited();

//Personalizando as variável
//Ele vai decidir se ele pode andar para a direita ou para esquerda

vel = choose(1,-1);

andando = choose(true, false);


if(andando)
{
	if(andando)
	{
	//Se eu estou no chão, eu ando para um lado
	velh = choose(vel, -vel);
			
	}
	else
	{
		velh = 0;
	}
}

tempo_decidir_andar = room_speed * 3;