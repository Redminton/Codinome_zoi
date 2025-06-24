// -------------------------------------------------------------
// Configurações de Desenho (para o texto da HUD)
// -------------------------------------------------------------
// Opcional: Se você tiver uma fonte personalizada, defina-a aqui.
// Exemplo: draw_set_font(fnt_hud_font); 

// Define a cor do texto
draw_set_color(c_white);

// Define o alinhamento do texto (topo-esquerda neste caso)
draw_set_halign(fa_left);
draw_set_valign(fa_top);

// -------------------------------------------------------------
// Desenho das Vidas
// -------------------------------------------------------------
// O current_target é definido em seu obj_camera_controller.
// O obj_hud_controller precisa saber qual é o player atual para mostrar as vidas dele.
draw_set_font(ft_hud); // <-- Use o nome da sua nova fonte aqui!



draw_set_halign(fa_left);
draw_set_valign(fa_top);

// Verifica se o objeto camera_controller existe e se ele tem um current_target válido.
if (instance_exists(obj_camera) && instance_exists(obj_camera.current_target)) {
    // Acessa a variável player_lives do jogador que a câmera está seguindo
  if (obj_camera.current_target.object_index == obj_player_1) { // <-- FIX IS HERE
        draw_set_color(c_white);
    } else { // It must be obj_player_2 then
        draw_set_color(c_black);
    }
   var _hp = obj_camera.current_target.hp;

    // Desenha o texto das vidas na posição X=10, Y=10 na tela
    draw_text(10, 10, "VIDAS: " + string(_hp));
} else {
    // Opcional: Se não houver um jogador válido para mostrar as vidas
    draw_text(10, 10, "VIDAS: N/A"); // Ou lógica para tela de Game Over
}

// -------------------------------------------------------------
// Resetar Configurações de Desenho
// (Importante para não afetar outros elementos desenhados no jogo)
// -------------------------------------------------------------
draw_set_font(-1); // Volta para a fonte padrão
draw_set_color(c_white); // Volta para a cor padrão (se você mudou para outra cor antes)
draw_set_halign(fa_left); // Volta para o alinhamento padrão
draw_set_valign(fa_top);