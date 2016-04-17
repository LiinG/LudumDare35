/*id_tmp = instance_nearest(self.x, self.y, obj_flower);
if(id_tmp != noone){
    if(&& id_tmp.free == 1){
        script_execute(scr_pathFinder(3, id_tmp.x, id_tmp.y));
    }else{
        //scr_nearest_instance(self.x, self.y, obj_flower, n);
    }
}*/

if(statut == 0){ //promenade
    if(action_cpt > 0){
        action_cpt = action_cpt - 1;
        //show_message(action_tmp);
    }else{//fin promenade
        //rechercher ressource
        statut = 1;
        //var id_tmp;
        //id_tmp = instance_nearest(self.x, self.y, obj_flower);
        id_tmp = scr_nearest_instance(self.x, self.y, obj_flower_blue, 1);
        show_message(id_tmp.x + " " + id_tmp.y);
        //re-déclencher compteur pour prochaine action
        action_cpt = random(450); //+ 500;
        direction = 0;
        speed = 0;
    }
}else if(statut == 1){//recherche ressource
     show_message(id_tmp.x + " " + id_tmp.y);
    //recherche plus proche ressource
    id_tmp = scr_nearest_instance(self.x, self.y, obj_flower_blue, 1);
    scr_pathFinder(3, id_tmp.x, id_tmp.y);
    if(self.x == id_tmp.x && self.y == id_tmp.y){ //ressource trouvée => en cours d'action
        statut = 2;
    }
}
else if(statut == 2){//en cours d'action
    if(in_action_cpt > 0){
        in_action_cpt = in_action_cpt - 1;
    }else{//fin cours d'action
        statut = 0;
        //re-déclencher compteur pour prochaine action
        in_action_cpt = random(60) + 150;
    }
}

