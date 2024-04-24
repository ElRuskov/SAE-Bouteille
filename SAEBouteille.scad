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
*composant();
