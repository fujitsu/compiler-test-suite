      PROGRAM MAIN                                                   
      IMPLICIT REAL*8(A-B,D),LOGICAL*4(L),COMPLEX*16(C)                 
      DIMENSION  DA10(55,55),DA20(55,55),DA30(55,55),                   
     *           DA40(55,55)                                            

      DATA     DA10/3025*1.0D0/,DA20/3025*2.0D0/                        
      DATA     DA30/3025*3.0D0/,DA40/3025*4.0D0/                        
      DATA     NN/50/                                                   
      CALL  SUB1(DA10,DA20,DA30,DA40,NN)                                
      WRITE(6,100)         DA20                                         
 100  FORMAT(1H ,7HDA20   ,/,((3(F15.7,2X))/) )                         
      STOP                                                              
      END                                                               
      SUBROUTINE SUB1(DA10,DA20,DA30,DA40,NN)                           
      IMPLICIT  REAL*8(A-B,D),LOGICAL*4(L),COMPLEX*16(C)                
      DIMENSION  DA10(NN,NN),DA20(NN,NN),DA30(NN,NN),                   
     *           DA40(NN,NN)                                            
      COMMON /BLK/ CD10(50,50),CD20(50,50)                              

      NX=NN-3                                                           
      DO 999 II=1,NX                                                    
        DO 10 I1=1,NX                                                   
          DA10(II,I1)=0.0D0                                             
          DO 20 I2=1,NX                                                 
            DA10(II,I1)=DA10(II,I1)+DA20(I1,I2)*DA40(I1,I2)             
  20      CONTINUE                                                      
          DA10(II,I1)=DA10(II,I1)-DA30(II,I1)                           
  10    CONTINUE                                                        
 999  CONTINUE                                                          
      NZZ=NX/2                                                          
      DO 40 J1=2,NZZ                                                    
       DO 40 J2=1,NX                                                    
         DA20(J1,J2)=DA30(J1,J2)                                        
         DO 50 J3=1,NX                                                  
           DA20(J1,J2)=DA20(J1,J2)+DA10(J2,J3)/DA30(J1,J3)              
  50     CONTINUE                                                       
         DA20(J1-1,J2)=DA20(J1,J2)-DA40(J1,J2)                          
  40  CONTINUE                                                          
      RETURN                                                            
      END                                                               
