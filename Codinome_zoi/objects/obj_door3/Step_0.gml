 if (ds_map_exists(obj_character_parent.chaves_coletadas, porta_id)) {
            // Se o player tem a chave, pode abrir a porta
           aberta = true;

        // Aqui você pode mudar o sprite ou destruir a porta
      //  sprite_index = spr_porta_aberta;
         instance_destroy();

 }