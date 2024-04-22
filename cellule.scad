module face(){
cube(size=[1200,45,45],center=false);
cube(size=[45,45,1890],center=false);
}
module haut(){
translate([0,0,1890]){
rotate([-90,0,0])
cube(size=[45,45,1200],center=false);}
}
module haut2(){
translate([0,45,1845]){
rotate([90,0,0])
cube(size=[45,45,1200],center=false);}
}
module transversale(){
translate([45,0,1845]){
rotate([0,0,42.78])
cube(size=[1635,45,45],center=false);    
}}
module plaque(){
translate([45,0,920])
cube(size=[1153,490,10],center=false);
rotate([0,0,90])
translate([0,-1250,920])
cube(size=[1153,490,10],center=false);    
}
module cellule(){
face();
haut();
translate([1200,1200,0]){
rotate([0,0,-90]){
face();
haut2();}}
transversale();
plaque();}
cellule();