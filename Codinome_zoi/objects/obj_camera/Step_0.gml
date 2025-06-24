if (instance_exists(current_target)) {
    // Checa se o current_target colide com a zona usando bounding box
    var is_in_zoom = collision_rectangle(
        current_target.bbox_left,
        current_target.bbox_top,
        current_target.bbox_right,
        current_target.bbox_bottom,
        obj_zoom,
        false, // não considerar sólidas
        true   // retornar apenas se colidir com alguma instância
    );

    if (is_in_zoom && !zoom_out_ativo) {
        zoom_out_ativo = true;

      // Guarda a posição atual da câmera
var cam_x = camera_get_view_x(view_camera[0]);
var cam_y = camera_get_view_y(view_camera[0]);

// Guarda a proporção do jogador dentro da view atual
var px = (current_target.x - cam_x) / camera_get_view_width(view_camera[0]);
var py = (current_target.y - cam_y) / camera_get_view_height(view_camera[0]);

// Define novo tamanho de view
camera_set_view_size(view_camera[0], 1920, 1080);

// Reposiciona a câmera para manter o player no mesmo ponto da tela
var new_cam_x = current_target.x - px * camera_get_view_width(view_camera[0]);
var new_cam_y = current_target.y - py * camera_get_view_height(view_camera[0]);

camera_set_view_pos(view_camera[0], new_cam_x, new_cam_y);

    }
    else if (!is_in_zoom && zoom_out_ativo) {
        zoom_out_ativo = false;

        // Volta ao zoom original
        camera_set_view_size(view_camera[0], 350, 200);
    }

    // Atualiza posição da câmera
    var target_x = current_target.x - camera_get_view_width(view_camera[0]) / 2;
    var target_y = current_target.y - camera_get_view_height(view_camera[0]) * 0.6;
    camera_set_view_pos(view_camera[0], target_x, target_y);
}


// Troca com fade
if (keyboard_check_pressed(vk_tab)) {
    if (instance_exists(obj_fade)) {
        with (obj_fade) {
            fading = true;
            fade_direction = 1;
            alpha = 0;
            trocou_camera = false;
			
        }
    }
}

/* Acompanhar o player atual com ajuste vertical
if (instance_exists( current_target)) {
    var target_x =  current_target.x - view_wport[0] / 2;
    var target_y =  current_target.y - view_hport[0] * 0.6;
    camera_set_view_pos(view_camera[0], target_x, target_y);
}
