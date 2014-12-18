///scrSpawnDucks(numDucks)

var numDucks = argument0;

for (var i = 0; i < numDucks; ++i) {
    xPos = irandom(736) + 32;
    instance_create(xPos, 384, objDuck);
}
