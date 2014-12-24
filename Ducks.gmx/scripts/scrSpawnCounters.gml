///scrSpawnCounters

with (objGameManager) {
    var xS = 292;
    var yS = 544;
    
    counter[0] = instance_create(xS, yS, objCounter);
    
    var width = counter[0].sprite_width + 2;
    //height = objCounter.sprite_height;
    
    for (i = 1; i < 10; ++i) {
        counter[i] = instance_create(xS + i * width, yS, objCounter);
        if(i <= 5)
          instance_create(xS + (i-1) * width, yS + 17, objQuotaIndicator);
    }
}
