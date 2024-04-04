module bouteille(){
    cylinder(234,d=63*2,$fn=200);
translate([0,0,234])
cylinder(53.4,63,25,$fn=200);
translate([0,0,287.4])
cylinder(24.6,d=25*2,$fn=200);}

difference(){
    cylinder(13,d=32);
    translate([0,0,-2])
    cylinder(13,d=30);
}
translate([-100,0,0])
bouteille();
