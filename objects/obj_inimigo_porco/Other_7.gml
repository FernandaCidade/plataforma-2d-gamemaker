//Se eu estou usando a sprite de dano e a animação acabou, eu morro
if(sprite_index == spr_inimigo_porco_dano)
{
	show_debug_message("kkkk")
	
	morto = true;
}

if(sprite_index == spr_inimigo_porco_morto )
{
	image_speed = 0;
	image_index = 3;
	
}