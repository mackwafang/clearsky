///numberOfEnemies([condition])
var condition = undefined;
if (argument_count == 1) {
    condition = string_lower(argument[0]);
}
var n = 0;
for (var i = 0; i < instance_number(obj_npc_parent); i++) {
    var o = instance_find(obj_npc_parent,i);
    if (!o.isAlly) {
        switch(condition) {
            case "above":
                if (o.heightDiff > 10) {
                    n++;
                }
                break;
            case "below":
                if (o.heightDiff < -10) {
                    n++;
                }
                break;
            case "at":
                if (abs(o.heightDiff) < 10) {
                    n++;
                }
                break;
            case undefined:
                n++;
                break;
        }
    }
}
return n;
