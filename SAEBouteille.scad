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

*composant();
q1=360;
q2=360;
q3=360;
q4=360;
q5=360;
q6=360;
tabtheta=[$t*q1,$t*q2,$t*q3,$t*q4,$t*q5,$t*q6];
robot(tabtheta);