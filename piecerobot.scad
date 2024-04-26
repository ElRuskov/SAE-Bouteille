use <lib_repere.scad>
module P0(){translate([0,0,-375])import ("ModelesPieces/a0b.stl");translate([0,0,-375]){scale([50,50,50]){repere();}}}
module P1(){translate([0,0,-375])import ("ModelesPieces/a1b.stl");scale([50,50,50]){repere();}}
module P2(){translate([0,0,-375])import ("ModelesPieces/a2b.stl");}rotate([-90,0,0]){translate([0,0,160]){scale([50,50,50]){repere();}}}
module P3(){translate([0,0,-665])import ("ModelesPieces/a3b.stl");translate([0,20,10]){scale([50,50,50]){repere();}}}
module P4(){translate([0,-20,-665])import ("ModelesPieces/a4b.stl");translate([0,0,170]){scale([50,50,50]){repere();}}}
module P5(){translate([0,-20,-965])import ("ModelesPieces/a5b.stl");translate([0,0,0]){scale([50,50,50]){repere();}}}
module P6(){translate([0,-20,-965])import ("ModelesPieces/a6b.stl");translate([0,0,70]){scale([50,50,50]){repere();}}}
module Pince(){translate([0,-0,80])import ("ModelesPieces/pince.stl");translate([0,0,200]){scale([50,50,50]){repere();}}}
%P0();%P1();%P2();%P3();%P4();P5();P6();Pince();