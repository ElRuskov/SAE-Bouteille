module face(){
cube(size=[1200/2,45/2,45/2],center=false);
cube(size=[45/2,45/2,1890/2],center=false);
}
module haut(){
translate([0,0,1890/2]){
rotate([-90,0,0])
cube(size=[45/2,45/2,1200/2],center=false);}
}
module haut2(){
translate([0,45/2,1845/2]){
rotate([90,0,0])
cube(size=[45,45/2,1200/2],center=false);}
}
module transversale(){
translate([45/2,0,1845/2]){
rotate([0,0,42.78])
cube(size=[1635/2,45/2,45/2],center=false);    
}}
module plaque(){
translate([45/2,0,920/2])
cube(size=[1153/2,490/2,10/2],center=false);
rotate([0,0,90])
translate([0,-1250/2,920/2])
cube(size=[1153/2,490/2,10/2],center=false);    
}
module cellule(){
face();
haut();
translate([1200/2,1200/2,0]){
rotate([0,0,-90]){
face();
haut2();}}
transversale();
plaque();}
cellule();