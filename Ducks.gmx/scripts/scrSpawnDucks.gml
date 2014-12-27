///scrSpawnDucks(numDucks)

var numDucks = argument0;

for (var i = 0; i < numDucks; ++i) {
    xPos = irandom(400) + 200;
    instance_create(xPos, 340, objDuck);
}

with (objAmmo) {
    instance_destroy();
}

with (objGameManager) {
    ammoRemaining = 3;
    
    for (var i = 0; i < 3; ++i) {
        ammo[i] = instance_create(208 + i * 16, 542, objAmmo);
    }    
}
