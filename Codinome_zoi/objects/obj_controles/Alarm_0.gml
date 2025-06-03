players = array_create(2);
players[0] = instance_find(obj_player_1, 0);
players[1] = instance_find(obj_player_2, 0);
current_player = 0;

// Ativa o primeiro jogador
if (instance_exists(players[0])) {
    players[0].active_player = true;
}
