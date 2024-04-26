      REAL*4 R04_A(10),R04_B(10)/10*0.0/,R04_C(10)                      
      CHARACTER*2 RESULT/'OK'/                                          
      DATA R04_A/1.0,1.2,1.4,1.6,1.8,2.0,2.2,2.4,2.6,2.8/               
                                                                        
      R04_B=SIN(R04_A)+1.0                                              
      DO 10 I=1,10                                                      
   10   R04_C(I)=SIN(R04_A(I))+1.0                                      
      DO 20 I=1,10                                                      
   20   IF(ABS(R04_B(I)-R04_C(I)) .GT. 1.0E-6 ) RESULT='NG'             
      WRITE(6,*) '*** PROGRAM IS ',RESULT,' ***'                        
      STOP                                                              
      END                                                               
