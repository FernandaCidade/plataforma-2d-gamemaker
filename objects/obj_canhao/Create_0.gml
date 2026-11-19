estado = "idle"; //idle e on

//Metodo
muda_sprite = function(_sprite)
{
	//Checar se eu estou com a sprite certa
	if(sprite_index != _sprite)
	{
		sprite_index = _sprite;
		image_index = 0;
	}
}