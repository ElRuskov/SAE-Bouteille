use <lib_repere.scad>
module matDh(alpha=0,d=0,theta=0,r=0){
    multmatrix(m = [ [cos(theta)           , -sin(theta), 0, d],
                     [cos(alpha)*sin(theta), cos(alpha)*cos(theta), -sin(alpha), -r*sin(alpha)],
                     [sin(alpha)*sin(theta), sin(alpha)*cos(theta),  cos(alpha),  r*cos(alpha)],
                     [         0           ,           0          ,      0     ,    1      ]   ])
        children(); 
    } 
//////////////////////////////////
module robot(tabtheta){
repere();
d3=5;
rl4=6;
     
    
matDh(theta=tabtheta[1-1]){
    repere();                    
    matDh(alpha=90,theta=tabtheta[2-1]){
        repere();   
        matDh(d=d3,theta=tabtheta[3-1]){
            repere();   
            matDh(alpha=-90,theta=tabtheta[4-1],r=rl4){
                repere();   
                matDh(alpha=90,theta=tabtheta[5-1]){
                  repere();   
                  matDh(alpha=-90,theta=tabtheta[6-1]){
                    repere();           
                    }       
                }        
            }        
        }               
    }        
}
}
tabtheta=[$t*360,0,0,0,0,0];
robot(tabtheta);