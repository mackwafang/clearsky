///shootBullet(x,y,speed,direction)
var b = instance_create(argument[0],argument[1],obj_bullet);
b.shotFrom = id;
b.speed = argument[2];
b.direction = argument[3];
b.depth = depth;
part_type_scale(b.bulletPart,argument[2],1);
part_type_orientation(b.bulletPart,argument[3],argument[3],0,0,0);
