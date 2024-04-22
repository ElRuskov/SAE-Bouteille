module fleche (resolution){
cylinder(h = 500, r1 = 10, r2 = 10, center = false,$fn = resolution);
translate([0,0,500])
cylinder(h = 50, r1 = 20, r2 = 0, center = false,$fn = resolution);} 
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
