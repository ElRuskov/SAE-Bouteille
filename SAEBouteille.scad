use <BouteilleCristaline.scad>
use <cellule.scad>
import ("a0b.stl");
import ("a1b.stl");
import("a2b.stl");
import("a3b.stl");
import("a4b.stl");
import("a5b.stl");
import ("a6b.stl");
translate([0,300,4]){Support();}
translate([0,300,0])
Bouteille();
translate([0,400,0])
Bouchon();
cellule();