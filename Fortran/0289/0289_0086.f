      INTEGER*4 I04_A(10),I04_B(10)                                     
      CHARACTER*2 RESULT/'OK'/                                          
      DATA I04_A,I04_B/10*0,10*1/                                       
                                                                        
      I04_A(1:5)=I04_B(6:10)                                            
      I04_A=I04_A+1                                                     
      I04_A(10:1:-1)=I04_A+I04_B                                        
      DO I=1,5                                                          
        IF(I04_A(I) .NE. 2 .OR. I04_A(I+5) .NE. 3) RESULT='NG'          
      ENDDO                                                             
      WRITE(6,*) '*** PROGRAM IS ',RESULT,' ***'                        
      STOP                                                              
      END                                                               
