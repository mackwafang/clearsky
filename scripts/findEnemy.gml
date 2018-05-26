///findEnemy([nearest])
var findNearest = false;
if (argument_count == 1) {
    findNearest = true;
}
var list = ds_list_create();
for (var i = 0; i < instance_number(obj_npc_parent); i++) {
    var o = instance_find(obj_npc_parent,i);
    if (o != noone && o != id) {
        if (o.isAlly != isAlly) {
            ds_list_add(list,o);
        }
    }
}
var ret;
if (findNearest) {
    ds_list_sort(list,true);
    ret = ds_list_find_value(list,0);
}
else {
    ret = ds_list_find_value(list,irandom(ds_list_size(list)-1));
}
ds_list_destroy(list);
return ret;
