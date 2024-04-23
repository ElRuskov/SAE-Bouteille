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




module p1p2 (theta){
P0();repere();
matDh(alpha=0,d=0,theta=theta,r=190)P1();translate([0,0,200])repere();
matDh(alpha=0,d=0,theta=theta,r=290)translate([0,156,0])rotate([0,theta,0])P2();translate([0,0,200])repere();
}

p1p2(360*sin($t*360));



matDh(alpha=0,d=20,theta=360*sin($t*360),r=535)P3();
matDh(alpha=0,d=20,theta=360*sin($t*360),r=770)P4();
matDh(alpha=0,d=20,theta=360*sin($t*360),r=940)P5();
matDh(alpha=0,d=20,theta=360*sin($t*360),r=1027)P6();
*composant();
