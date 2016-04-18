grid = mp_grid_create(0,0,room_width/32,room_height/32,32,32);
path = path_add();
mp_grid_add_instances(path, obj_solid, 1);
mp_grid_add_instances(path, obj_tree, 1);
mp_grid_add_instances(path, obj_shell, 1);
mp_grid_add_instances(path, obj_deadfish, 1);
mp_grid_add_instances(path, obj_bush, 1);
mp_grid_add_instances(path, obj_rock, 1);
mp_grid_add_instances(path, obj_bush_fruit, 1);
mp_grid_path(grid, path, x, y, argument1, argument2, 1);
path_start(path, argument0, "", 1);
