use <lib_repere.scad>
module P0(){translate([0,0,-375])import ("a0b.stl");translate([0,0,-375]){scale([50,50,50]){repere();}}}
module P1(){translate([0,0,-375])import ("a1b.stl");scale([50,50,50]){repere();}}
module P2(){translate([0,0,-375])import ("a2b.stl");}rotate([-90,0,0]){translate([0,0,160]){scale([50,50,50]){repere();}}}
module P3(){translate([0,0,-375])import ("a3b.stl");translate([0,20,280]){scale([50,50,50]){repere();}}}
module P4(){translate([0,0,-375])import ("a4b.stl");translate([0,20,460]){scale([50,50,50]){repere();}}}
module P5(){translate([0,0,-375])import ("a5b.stl");translate([0,20,590]){scale([50,50,50]){repere();}}}
module P6(){translate([0,0,-375])import ("a6b.stl");translate([0,20,660]){scale([50,50,50]){repere();}}}
P0();P1();P2();P3();P4();P5();P6();