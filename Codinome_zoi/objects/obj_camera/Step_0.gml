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

// Acompanhar o player atual
if (instance_exists(current_target)) {
    camera_set_view_pos(view_camera[0], current_target.x - view_wport[0]/2, current_target.y - view_hport[0]/2);
}
