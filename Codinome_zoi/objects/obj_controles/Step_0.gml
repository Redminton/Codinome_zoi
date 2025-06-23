// Trocar jogador com TAB
if (keyboard_check_pressed(vk_tab)) {
    if (instance_exists(players[global.current_player])) {
        players[global.current_player].active_player = false;
    }

    global.current_player = (global.current_player + 1) mod array_length(players);

    if (instance_exists(players[global.current_player])) {
        players[global.current_player].active_player = true;
    }
}

// Inputs globais direcionados ao jogador ativo
var p = players[global.current_player];
if (instance_exists(p)) {

    if (keyboard_check(ord("A"))) {
        with (p) move_left();
    }
    if (keyboard_check(ord("D"))) {
        with (p) move_right();
    }
    if (keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("W"))) {
        with (p) jump();
    }

   
    // Ou: 🔫 Disparo para o mouse
    // Se quiser, pode reativar este bloco e aplicar a mesma lógica
    if (mouse_check_button_pressed(mb_left)) {
        var dir = point_direction(p.x, p.y, mouse_x, mouse_y);
        with (p) {
            // Cria a instância da bala na camada "Instances"
            var bullet = instance_create_layer(x, y, "Instances", obj_bala);
            
            // Define a direção (calculada para o mouse) e a velocidade da bala
            bullet.direction = dir;
            bullet.speed = 18;
            
            show_debug_message("Bala criada na direção: " + string(bullet.direction)); // Opcional: para debug
        }
    }
}