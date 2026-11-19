switch(estado)
{
	//Estado idle, dele parado
	case "idle":
	//chamando o método
		muda_sprite(spr_canhao_idler);
	break;
	
	//Quando ele for ativado
	case "on":
		//chamando o método
		muda_sprite(spr_canhao_on);
		
		
		if(image_index >= image_number - 1)
		{
			estado = "idle";
		}
	break;
}