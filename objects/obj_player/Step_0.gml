//Controlando o player
var _chao = place_meeting(x,y + 1, obj_chao); //Se o chão ta a um pixel do player, essa conta vai ser true

var _left, _right, _jump;

_left = keyboard_check(inputs.left);

_right = keyboard_check(inputs.right);

_jump = keyboard_check_pressed(inputs.jump);

//Só posso me controlar se o timer do dano está zerado
if(timer_dano <= 0)
{
	//dano = false;
	velh = (_right - _left) * vel; //Se apertar para direita, vai fazer 1 menos o valor do pixel. Mesma coisa para esquerda, o que dá valor negativo multiplicado pela velocidade
	
}





//Permitindo o player pular apenas no chão
if(_chao)
{
	if(_jump)
	{
		velv =  -vel_jump;
	}
	//Se eu estou no chão e me movendo 
	if(velh != 0 )
	{	
		//Mudando a sprite
		sprite_index = spr_player_run;
		
		//Faço ele olhar para onde está indo 
		image_xscale = sign(velh) //essa função pega qqr valor e se ele for positivo, ela retorna 1 e negativo -1
	}
	else //Se minha velocidade é zero
	{
		sprite_index = spr_player_idle;
	}
}
else // Aplicando gravidade se não estou no chão
{
	if(velv < 0) //Se eu estou pulando
	{
		//Mudando a sprite
		sprite_index = spr_player_jump;
	
	}
	else //Se não, estou caindo
	{
		sprite_index = spr_player_fall;
		
		//Se eu estou indo pra baixo, ai eu posso pular na cabeça do inimigo
		var _inimigo = instance_place(x, y + 1, obj_inimigo_pai);
		
		//Se eu cair no inimigo
		if(_inimigo)
		{
			//Se eu pulei na cabeça do inimigo, não tem perigo de tomar dano 
			dano = false;
			
			//Se o inimigo não está mortoa
			if(_inimigo.morto == false)
			{
				
				
				//Subo no ar novamente
				velv = -vel_jump;
			
				//Avisando para o inimigo que eu acertei que ele tomou dano
				_inimigo.dano = true;
			}
			
		
		}
		
		
	}
	
	//Aplicando a gravidade
	velv += grav;
	
	if(velh != 0)
	{
		image_xscale = sign(velh);
	}
}
if(dano)
{
	
	sprite_index = spr_player_hit;
	
}




//Se o timer do dano é maior que zero, diminuo ele 
if(timer_dano > 0)
{
	timer_dano --;
	
	//Se timer dano chegar a zero, dano fica true (estava piscando que nem árvore de natal)
	if(timer_dano == 0)
	{
		dano = false;
	}
}


//Indicando que terei um tempo invensivel  
if(inv_timer > 0)
{
	inv_timer--;
	image_alpha = .5;              
}
else
{
	image_alpha = 1;
}


//Tomando dano
var _inimigo = instance_place(x,y + 3,obj_inimigo_pai);


//Se tem um inimigo e o tempo invensivel é menor que zero
if(_inimigo && inv_timer <= 0)
{
	//Dando o valor do timer dano 
	timer_dano = tempo_dano;
	
	inv_timer = inv_tempo;
	
	//Caso o inimigo não esteja morto e sem danos
	if(_inimigo.morto == false && _inimigo.dano == false)
	{
		dano = true; //recebo dano 
	}
	
	
}