// Adiciona a chave ao mapa de chaves coletadas
ds_map_replace(obj_character_parent.chaves_coletadas, other.chave_id, true);

// Destrói a chave coletada
with (other) instance_destroy();
