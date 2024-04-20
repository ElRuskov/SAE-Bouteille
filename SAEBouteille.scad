use <BouteilleCristaline.scad>
use <cellule.scad>
use <dh.scad>
module composant(){   
translate([0,300,4]){Support();}
translate([0,300,0])
Bouteille();
translate([0,400,0])
Bouchon();
cellule();}


import("a0b.stl");
matDh(alpha=0,d=0,theta=360*sin($t*360),r=0)import ("a1b.stl");
matDh(alpha=0,d=0,theta=360*sin($t*360),r=0)import("a2b.stl");
matDh(alpha=0,d=0,theta=360*sin($t*360),r=0)import("a3b.stl");
matDh(alpha=0,d=0,theta=360*sin($t*360),r=0)import("a4b.stl");
matDh(alpha=0,d=0,theta=360*sin($t*360),r=0)import("a5b.stl");
matDh(alpha=0,d=0,theta=360*sin($t*360),r=0)import ("a6b.stl");
composant();