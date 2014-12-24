///scrSpawnDucks(numDucks)

var numDucks = argument0;

for (var i = 0; i < numDucks; ++i) {
    xPos = irandom(736) + 32;
    instance_create(xPos, 384, objDuck);
}


with (objAmmo) {
    instance_destroy();
}

with (objGameManager) {
    ammoRemaining = 3;
    
    for (var i = 0; i < 3; ++i) {
        ammo[i] = instance_create(208 + i * 16, 544, objAmmo);
    }    
}