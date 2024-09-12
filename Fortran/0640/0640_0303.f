      PROGRAM MAIN                                                   
      DATA N/10/                                                        

      COMPLEX*8  C10(10),C11(10),C12(10),C13(10),C14(10),CV10,CV11,CV12 
      INTEGER*4  I10(10),I11(10),I12(10),I13(10),L/3/,M/5/              
      DATA  C10/(1,2),(2,2),(1,2),(3,3),(1,2),(2,1),(1,2),(2,3),(1,2),  
     1          (1,2)/                                                  
      DATA  C11/(1,3),(0,0),(2,2),(0,3),(1,2),(0,1),(2,2),(1,1),(1,3),  
     1          (3,1)/                                                  
      DATA  I10,I11,I12,I13/40*0/                                       
      DATA  C12/5*(1,1),5*(2,2)/,C13/5*(0,0),5*(3,3)/,                  
     1      C14/5*(1,0),5*(3,2)/,CV10/(2,2)/,CV11/(1,1)/,CV12/(1,1)/    

      COMPLEX*16 CD20(10),CD21(10),CD22(10),CDV20,CDV21,CDV22,CDV23,    
     1           CDV24                                                  
      INTEGER*4  I20(10),I21(10),I22(10)                                
      DATA  CD20/2*(1,1),2*(0,0),2*(2,2),2*(3,3),2*(0,1)/,              
     1      CD21/2*(1,1),2*(1,0),2*(2,2),2*(3,1),2*(0,1)/,              
     2      CD22/5*(1,1),5*(0,1)/,CDV20/(0,1)/,CDV21/(3,2)/,            
     3      CDV22/(4,3)/,CDV23/(2,2)/,CDV24/(3,1)/                      
      DATA  I20,I21,I22/30*0/                                           

      WRITE(6,*) '----- LOOP 1 -----'                                   
      DO 10 I=1,N                                                       
        IF ( C10(I) .EQ. (1.0,2.0) ) THEN                               
          IF ( (2.0,2.0) .NE. C11(I) )  THEN                            
            I10(I) = I                                                  
          ENDIF                                                         
          IF ( C10(L) .EQ. C11(M) )     THEN                            
            I11(I) = I                                                  
          ENDIF                                                         
        ENDIF                                                           
        IF ( C12(I) .EQ. C13(I) ) GO TO 10                              
          IF ( C14(I).NE. CV10 ) I12(I) = I                             
          IF ( CV11  .EQ. CV12 ) I13(I) = I                             
   10 CONTINUE                                                          
      WRITE(6,*) I10                                                    
      WRITE(6,*) I11                                                    
      WRITE(6,*) I12                                                    
      WRITE(6,*) I13                                                    

      WRITE(6,*) '----- LOOP 2 -----'                                   
      DO 20 I=1,N                                                       
        IF ( CD20(I) .EQ. CD21(I) ) GO TO 21                            
        IF ( CD22(I) .NE. CDV20   ) GO TO 21                            
          GO TO 22                                                      
   21     I20(I) = I                                                    
   22   IF ( CD22(I) .NE. CDV20   ) GO TO 23                            
        IF ( CDV21   .EQ. CD22(I) ) GO TO 23                            
        IF ( CD22(I) .NE. CDV22   ) GO TO 23                            
          GO TO 24                                                      
   23     I21(I) = I                                                    
   24   IF ( CD20(L) .EQ. CD21(L))  GO TO 25                            
        IF ( CD20(L) .NE. CDV23  )  GO TO 25                            
        IF ( CDV24   .EQ. CD21(L))  GO TO 25                            
          GO TO 20                                                      
   25     I22(I) = I                                                    
   20 CONTINUE                                                          
      WRITE(6,*) I20                                                    
      WRITE(6,*) I21                                                    
      WRITE(6,*) I22                                                    
      STOP                                                              
      END                                                               
