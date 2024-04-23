use <BouteilleCristaline.scad>
use <cellule.scad>
use <dh.scad>
use <lib_repere.scad>
use<piecerobot.scad>
module composant(){   
translate([0,300,4]){Support();}
translate([0,300,0])
Bouteille();
translate([0,400,0])
Bouchon();
cellule();}




module robot(tabtheta){
P0();repere();
     
    
matDh(theta=tabtheta[1-1]){
    repere();translate([0,0,190])P1();                    
    matDh(alpha=0,theta=0){
        rotate([0,tabtheta[2-1],0]){repere();
         translate([0,150,290])P2();   
        matDh(theta=0){
            repere();translate([0,0,290])rotate([0,tabtheta[3-1],0])translate([0,0,-290-375])P3();   
            matDh(alpha=-90,theta=tabtheta[4-1]){
                repere();   
                matDh(alpha=90,theta=tabtheta[5-1]){
                  repere();   
                  matDh(alpha=-90,theta=tabtheta[6-1]){
                    repere();           
                    }       
                }        
            }        
        }               
    }        
}
}}
////////////////////////////////////////////////////////////////
//animer avec angle= $t*360
tabtheta=[$t*360,0,0,0,0,0];
robot(tabtheta);
*composant();
