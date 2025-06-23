function jump() {
    if (!active_player) exit;
    if (in_knockback) exit;

    // Só pula se estiver no chão
    if (grounded) {
        vel_y = -jump_speed;
        grounded = false;

        // Troca de sprite baseado no tipo de jogador
        if (object_index == obj_player_1) {
            sprite_index = spr_player1_jump;
        } 
        else if (object_index == obj_player_2) {
            sprite_index = spr_player2_jump;
        }
    }
}
