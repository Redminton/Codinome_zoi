// Collision Event with obj_inimigo (or obj_pai_inimigo)

// Destrói a instância do inimigo com a qual a bala colidiu
// 'other' refere-se à outra instância na colisão (o inimigo)
with (other) {
  hp -= 1;
    // Você pode adicionar efeitos visuais ou sonoros aqui
    // Ex: effect_create_at_layer(fx_spark_small, "Instances", x, y, c_red);
    // Ex: audio_play_sound(snd_enemy_hit, 0, false);
}

// Destrói a própria bala após a colisão
// 'self' ou simplesmente não usar 'with' refere-se à própria bala
instance_destroy();
// Ex: effect_crtate_at_layer(fx_smoke, "Instances", x, y, c_gray);