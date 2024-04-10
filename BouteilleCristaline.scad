$fn=200;
module Bouchon (){
difference(){
    cylinder(h=13, d=32, center=false);
    cylinder(h=13, d=30, center=true);}}
    
module corps (){
union(){
    cylinder(h=134, d=63, center=false);
    translate([0,0,134])
    cylinder(h=53.4, d1=63, d2=25, center=false);
    translate([0,0,187.4]) 
    cylinder(h=24.6,d=25, center=false);}}

module arrondi(){
difference(){
    cylinder(h=10, r=35);
    translate([0,0,135])
    translate([0,0,-124.9])
    sphere(d=63);}}


*minkowski(){
    cube([120,100,1.63],true);
    cylinder(r=3);
}

module Bouteille(){
difference(){
    corps();
    translate([0,0,-0.01])
    arrondi();}}


Bouteille();
translate([100,0,0])
Bouchon();