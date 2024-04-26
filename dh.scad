use <lib_repere.scad>
use <piecerobot.scad>
module matDh(alpha=0,d=0,theta=0,r=0){
    multmatrix(m = [ [cos(theta)           , -sin(theta), 0, d],
                     [cos(alpha)*sin(theta), cos(alpha)*cos(theta), -sin(alpha), -r*sin(alpha)],
                     [sin(alpha)*sin(theta), sin(alpha)*cos(theta),  cos(alpha),  r*cos(alpha)],
                     [         0           ,           0          ,      0     ,    1      ]   ])
        children(); 
    } 
module robot(){
    P0();
    matDh(theta=tabtheta[1-1]){
        P1();
        rotate([0,tabtheta[2-1],0]){
            P2();
            translate([0,0,290])rotate([0,tabtheta[3-1],0]){
                P3();
                translate([0,20,0])rotate([0,0,tabtheta[4-1]]){
                    P4();
                    translate([0,0,300])rotate([0,tabtheta[5-1],0]){
                        P5();
                        matDh(theta=tabtheta[6-1]){
                            P6();
                            Pince();
                            }
                        }
                    }
                }        
            }
        }
    }

tabtheta=[$t*0,$t*0,$t*0,$t*0,$t*0,$t*360];
robot(tabtheta);