module fleche (resolution){
cylinder(h = 0.5, r1 = 0.1, r2 = 0.1, center = false,$fn = resolution);
translate([0,0,0.5])
cylinder(h = 0.5, r1 = 0.2, r2 = 0, center = false,$fn = resolution);} 
module repere(){
//rotate([0,90,0])
rotate(90,[0,1,0])
color( "red")
fleche (1000);

color( "blue")
fleche (1000);
    
rotate(-90,[1,0,0])
color( "green")
fleche (1000);}
