$fn=200;
module extrudeBouteille(){
linear_extrude(height = 13, center = false, twist = -1500,$fn=50)
translate([25/2, 0, 0])
circle(d = 2);
cylinder(h=13,d=25, center=false);}

module extrudeBouchon(){
linear_extrude(height = 25/2, center = false, twist = -1500,$fn=50)
translate([30/2, 0, 0])
circle(d = 2);
cylinder(h=25, d=31, center=true);}

module Bouchon (){
color("cyan"){
difference(){
    cylinder(h=13, d=32, center=false);
extrudeBouchon();}}}
    
module corps (){
union(){
    cylinder(h=134, d=63, center=false);
    translate([0,0,134])
    cylinder(h=53.4, d1=63, d2=25, center=false);
    translate([0,0,187.4]) 
    extrudeBouteille();
    }}
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
color("white"){
difference(){
    corps();
    translate([0,0,-0.01])
    arrondi();}}}


Bouteille();
translate([100,0,0])
Bouchon();
