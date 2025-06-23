players = array_create(2);
players[0] = instance_find(obj_player_1, 0);
players[1] = instance_find(obj_player_2, 0);

global.current_player = 0; // índice do jogador atual no array
global.playerAtual = players[global.current_player]; // instância atual

// Ativar o primeiro jogador
if (instance_exists(global.playerAtual)) {
    global.playerAtual.active_player = true;
}


