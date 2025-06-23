if (x < 0 || x > room_width || y < 0 || y > room_height) {
    instance_destroy();
}
// Step Event para obj_bala


// Alternativamente, se você está usando bullet.speed e bullet.direction:
// move_and_collide(); // Se tiver uma função de movimento e colisão customizada

// --- Lógica de Colisão com o Chão ---
// Você vai precisar da sua função check_collision ou da lógica dela.
// Se 'check_collision' for uma função global (definida em um script),
// você pode chamá-la diretamente.
// Se não for, precisaremos da lógica de colisão de tilemap aqui.

// Acessa o tilemap de colisão global
var _collision_tilemap = obj_game_manager.collision_tilemap;

// Verifica se há colisão de tilemap nos cantos da bala
// (A bala já se moveu para a nova posição no início do Step, então checamos ali)
var _collided_with_tile = false;
if (tilemap_get_at_pixel(_collision_tilemap, bbox_left, bbox_top) != 0 ||
    tilemap_get_at_pixel(_collision_tilemap, bbox_right, bbox_top) != 0 ||
    tilemap_get_at_pixel(_collision_tilemap, bbox_right, bbox_bottom) != 0 ||
    tilemap_get_at_pixel(_collision_tilemap, bbox_left, bbox_bottom) != 0)
{
    _collided_with_tile = true;
}

// Se houver uma colisão com o chão (tilemap)
if (_collided_with_tile) {
    // Destrói a bala
    instance_destroy();

    // Opcional: Adicione efeitos visuais ou sonoros ao atingir o chão
    // Ex: effect_create_at_layer(fx_spark_small, "Instances", x, y, c_gray);
    // Ex: audio_play_sound(snd_impact_wall, 0, false);
}