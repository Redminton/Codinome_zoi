
if (instance_exists(obj_player_1) && instance_exists(obj_player_2)) {
    player1 = instance_find(obj_player_1, 0);
    player2 = instance_find(obj_player_2, 0);
    current_target = player1;
}

window_set_fullscreen(true);