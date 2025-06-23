function move_left() {
    if (!active_player) exit;
    if (in_knockback) exit;

    vel_x = -move_speed;

    if (object_index == obj_player_1) {
        if (sprite_index == spr_player1_fall) exit;

        if (grounded) {
            sprite_index = spr_player1_walk;
        }
    }
    else if (object_index == obj_player_2) {
        if (sprite_index == spr_player2_fall) exit;

        if (grounded) {
            sprite_index = spr_player2_walk;
        }
    }
}
