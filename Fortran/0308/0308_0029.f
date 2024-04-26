      PROGRAM MAIN                                                   
        INTEGER*4        I,J,K,V_A(10),V_B(10)                          
        CHARACTER(LEN=8) CHA(4),CHB(4),CHC(4)                           
        DATA V_A,V_B/3,1,4,1,5,9,2,6,5,3,5,8,9,7,9,3,2,3,8,4/           
        DATA CHA/8H (1H , ',8H,5I5,/, ,8H     =" ,8HHA(I:K)+/           
        DATA CHB/8HA(I:K)  ,8H  1H , ",8H,5I5,//,,8HB(K:J)= /           
        DATA CHC/8H     =' ,8HB(K:J)  ,8H  1H ,14,8H,5I5  ) /           
                                                                        
          I=COS(0.0)                                                    
          J=I+AINT(8.2)                                                 
          K=(I+J)/2                                                     
          WRITE(6,*) 'START'                      
          WRITE(6,FMT='(1H ,'' I='',I3,                                 
     +                  1H , " J=" ,I3,                                 
     +                  1H ,3H K=  ,I3/)') I,J,K                        
          WRITE(6,FMT=CHA//CHB//CHC)                                    
     +                          V_A(I:K),V_B(K:J),V_A(I:K)+V_B(K:J)     
          WRITE(6,*) 'OK'                       
          WRITE(6,*) 'END'
  20      STOP                                                          
      END PROGRAM MAIN                                               
