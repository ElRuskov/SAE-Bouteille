
module bouteille(){
union(){
    color("white"){
    cylinder(h=134,d=63,$fn=200);
    translate([0,0,134])
    cylinder(h=53.4,d1=63,d2=25,$fn=200);
    translate([0,0,187.4])
    cylinder(h=24.6,d=25,$fn=200);}}}

module bouchon(){
color("cyan"){    
difference(){cylinder(h=13,d=32,$fn=200);
    translate([0,0,-2])
    cylinder(13,d=30,$fn=200);}}}
module arrondis (){
    difference(){
    cylinder(h=10,r=35);
    sphere(d=63);
    }}
difference(){
    bouteille();
    arrondis();}
translate([-100,0,0])
bouchon();
    
