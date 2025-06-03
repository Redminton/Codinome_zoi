// Trocar jogador com TAB
if (keyboard_check_pressed(vk_tab)) {
    // Desativa o jogador atual
    if (instance_exists(players[current_player])) {
        players[current_player].active_player = false;
    }

    // Avança para o próximo j	ogador
    current_player = (current_player + 1) mod array_length(players);

    // Ativa o novo jogador
    if (instance_exists(players[current_player])) {
        players[current_player].active_player = true;
    }
}

// Inputs globais direcionados ao jogador ativo
var p = players[current_player];
if (instance_exists(p)) {
    if (keyboard_check(ord("A"))) {
        with (p) move_left();
    }
    if (keyboard_check(ord("D"))) {
        with (p) move_right();
    }
   if (keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("W"))) {
    with (p) jump();

    }
}
