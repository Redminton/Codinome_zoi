// Somente desenha se estiver em transição (alpha > 0)
if (alpha > 0) {
    // Define a transparência da tela preta
    draw_set_alpha(alpha);
    
    // Define a cor preta para o fade
    draw_set_color(c_black);
    
    // Desenha um retângulo que cobre toda a tela
    draw_rectangle(0, 0, display_get_width(), display_get_height(), false);
    
    // Restaura a transparência para 1 (normal)
    draw_set_alpha(1);
}
