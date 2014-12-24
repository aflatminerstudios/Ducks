///scrNewLevel(level)

var level = argument0;

show_debug_message("scrNewLevel called.");

with (objCounter) {
    instance_destroy();
}


with (objGameManager) {
    scrSpawnCounters();
    gameSpeed = gameSpeed*1.2;
    ///Set this to be length of opening ditty
    var secs = audio_sound_length(sndFirstDown);
    audio_play_sound(sndFirstDown, 1, false);
    alarm[0] = secs * room_speed;
}
