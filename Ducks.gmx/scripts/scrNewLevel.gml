///scrNewLevel(level)

var level = argument0;

show_debug_message("scrNewLevel called.");

with (objCounter) {
    instance_destroy();
}


with (objGameManager) {
    scrSpawnCounters();
    instance_create(400, 240, objRoundIndicator);
    gameSpeed = gameSpeed*1.25;
    ///Set this to be length of opening ditty
    var secs = audio_sound_length(sndFirstDown);
    audio_play_sound(sndFirstDown, 1, false);
    alarm[0] = secs * room_speed;
}
