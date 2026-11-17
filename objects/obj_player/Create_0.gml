//Aqui vai as variáveis base 

velh = 0;		// Velocidade horizontal dele
velv = 0;		// Velocidade vertical dele
vel = 4;		// Velocidade
grav = .3;		// Gravidade (é cumulativa)
vel_jump = 7;	// Velocidade do pulo

dano = false;
tempo_dano = room_speed * 0.5;
timer_dano = 0;


inv_tempo = room_speed * 2;
inv_timer = 0;


inputs = {
	left: ord("A"),
	right: ord("D"),
	jump: vk_space
}