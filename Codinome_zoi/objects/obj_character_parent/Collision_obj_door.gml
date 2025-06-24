// Movimento horizontal com colisão
if (!place_meeting(x + hspeed, y, obj_door)) {
    x += hspeed;
} else {
    // Se bater na porta, para o movimento horizontal
    hspeed = 0;
}

// Movimento vertical com colisão
if (!place_meeting(x, y + vspeed, obj_door)) {
    y += vspeed;
} else {
    // Para o movimento vertical ao bater na porta
    vspeed = 0;
}