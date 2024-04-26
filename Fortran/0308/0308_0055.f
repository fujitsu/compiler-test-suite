      INTEGER*1    I01_A(5),I01_B(5,5)                                  
      INTEGER*2    I02_A(5),I02_B(5,5)                                  
      INTEGER*4    I04_A(5),I04_B(5,5)                                  
      INTEGER*4    I08_A(5),I08_B(5,5)                                  
      LOGICAL*1    L01_A(5),L01_B(5,5)                                  
      LOGICAL*4    L04_A(5),L04_B(5,5),T_L04                            
      REAL*4       R04_A(5),R04_B(5,5)                                  
      REAL*8       R08_A(5),R08_B(5,5)                                  
      REAL*8       R16_A(5),R16_B(5,5),RANGE_Q                          
      COMPLEX*8    C08_A(5),C08_B(5,5)                                  
      COMPLEX*16   C16_A(5),C16_B(5,5)                                  
      COMPLEX*16   C32_A(5),C32_B(5,5),T_C32                            
      CHARACTER*4  CH4_A(5),CH4_B(5,5),T_CH4                            
       DATA T_L04/.TRUE./,RANGE_Q/1.0D-15/,T_C32/( 1.6D+1,-1.6D+1)/
     +     T_CH4/" L=4"/
      I01_A=1                                                           
      I02_A=2                                                           
      I04_A=4                                                           
      I08_A=8                                                           
      L01_A= .TRUE.                                                     
      L04_A= .FALSE.                                                    
      R04_A=4.0E+0                                                      
      R08_A=8.0D+0                                                      
      R16_A=1.6D+1                                                      
      C08_A=(8.0E+0,-8.0E+0)                                            
      C16_A=(1.6E+1,-1.6E+1)                                            
      C32_A=(3.2D+1,-3.2D+1)                                            
      CH4_A=' L=4'                                                      
      I01_B=C32_A(1)                                                    
      I02_B=I01_A(2)                                                    
      I04_B=I02_A(3)                                                    
      I08_B=I04_A(4)                                                    
      L01_B=L04_A(5)                                                    
      L04_B=L01_A(1)                                                    
      R04_B=I08_A(2)                                                    
      R08_B=R04_A(3)                                                    
      R16_B=R08_A(4)                                                    
      C08_B=R16_A(5)                                                    
      C16_B=C08_A(1)                                                    
      C32_B=C16_A(2)                                                    
      CH4_B=CH4_A(3)                                                    

      DO I=1,5                                                          
       DO J=1,5                                                         
         IF(    L04_B(J,I)       .NEQV. T_L04  ) GOTO 100               
         IF(ABS(C32_B(J,I)-T_C32) .GT.  RANGE_Q) GOTO 100               
         IF(    CH4_B(J,I)        .NE.  T_CH4  ) GOTO 100               
       ENDDO                                                            
      ENDDO                                                             
      WRITE(6,*) 'OK'                             
      STOP                                                              
  100 WRITE(6,*) 'NG'                             
      WRITE(6,*) 'L04_B=',L04_B                                         
      WRITE(6,*) 'C32_B=',C32_B                                         
      WRITE(6,*) 'CH4_B=',CH4_B                                         
      STOP                                                              
      END                                                               
