///scrEndLevel(neededQuota)

var neededQuota = argument0;

with(objGameManager) {
  var totalHits = 0;
  for (i = 0; i < 10; ++i) {
    if(counter[i].isHit) 
      totalHits++;
  }
  if(totalHits >= neededQuota){
    show_debug_message("Quota met, moving to Level " + string(level+1) + ".");
    scrNewLevel(++level);
  } else {
    show_debug_message("Didn't meet quota for this level.");
    scrEndGame();
  }
}
