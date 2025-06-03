function jump(){
if (!active_player) exit;
if (in_knockback) exit;

// Só pula se estiver no chão
if (grounded) {
    vel_y = -jump_speed; // Use sua variável de pulo
    grounded = false;
    sprite_index = spr_player_jump; // Troca para sprite de pulo, se tiver
}
}