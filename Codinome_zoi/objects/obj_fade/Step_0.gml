if (fading) {
    alpha += fade_speed * fade_direction;

    if (alpha >= 1 && !trocou_camera) {
        alpha = 1;
        fade_direction = -1;
        trocou_camera = true;

        // Trocar o current_target do obj_camera
        with (obj_camera) {
            if (current_target == player1) {
                current_target = player2;
            } else {
                current_target = player1;
            }
        }
    }

    if (alpha <= 0) {
        alpha = 0;
        fading = false;
        trocou_camera = false;
    }
}

