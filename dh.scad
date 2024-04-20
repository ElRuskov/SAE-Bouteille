//B. Vandeportaele 2023

//les angles sont en degrés!
use <lib_repere.scad>
//////////////////////////////////
//matrice de Denavit Hartenberg, notation de Khalil et Kleinfinger page 3 de:
//https://www.gdr-robotique.org/cours_de_robotique/online/Khalil-Dombre_Modelisation/Khalil-Dombre_Modelisation.pdf
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
//exemples d'utilisation de matDh
//matDh(alpha=10,d=0,theta=0,r=0) repere();
//matDh(alpha=0,d=1,theta=0,r=0) repere();
//matDh(alpha=0,d=0,theta=10,r=0) repere();    
//matDh(alpha=0,d=0,theta=0,r=1) repere();        
//matDh(alpha=10,d=1,theta=10,r=1) repere();            
//pour animer:    
//matDh(alpha=10,d=1,theta=180*sin($t*360),r=1) repere();                

///////////////////////////////////

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
////////////////////////////////////////////////////////////////
//animer avec angle= $t*360
tabtheta=[$t*360,0,0,0,0,0];
robot(tabtheta);