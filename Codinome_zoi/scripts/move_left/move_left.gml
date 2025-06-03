// Em um script separado chamado `move_left.gml`
function move_left() {
    if (!active_player) exit;
    if (in_knockback) exit;

    vel_x = -move_speed;

    if (sprite_index == spr_player_fall) exit;

    if (grounded) {
        sprite_index = spr_player_walk;
    }
}