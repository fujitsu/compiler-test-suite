      INTEGER*4 I04A   ,I04B,I,ERROR1,ERROR2                            
      REAL*4    R04A(5),R04B(5),R04C(5),CVALUE                          
      COMPLEX*8 C08A(5),C08B(5),C08C(5)                                 
      DATA R04B/1.0,2.0,3.0,4.0,5.0/                                    
     .    ,R04C/1.8414707,2.8414707,3.8414707,4.8414707,5.8414707/      
     .    ,C08B/(1.0,0.1),(2.0,0.2),(3.0,0.3),(4.0,0.4),(5.0,0.5)/      
     .    ,C08C/(1.1411200,0.10000002),(2.1411200,0.19999999)           
     .         ,(3.1411200,0.30000001),(4.1411200,0.39999998)           
     .         ,(5.1411200,0.50000000)                       /          
     .     CVALUE,ERROR1,ERROR2/1.0E-6,0,0/                             

      I04A=AINT(0.3)                                                    
      I04B=I04A+1                                                       

      R04A=R04B+SIN(DBLE(I04A+1))                                       
      C08A=C08B+SIN(CMPLX(I04B+2))                                      

      DO I=1,5                                                          
        IF (ABS(R04A(I) - R04C(I)) .GT. CVALUE) THEN                    
          ERROR1=ERROR1+1                                               
        ENDIF                                                           
        IF (ABS(C08A(I) - C08C(I)) .GT. CVALUE) THEN                    
          ERROR2=ERROR2+1                                               
        ENDIF                                                           
      ENDDO                                                             
      IF (ERROR1 .EQ. 0 .AND. ERROR2 .EQ. 0) THEN                       
        WRITE(6,*) 'OK'                           
      ELSE                                                              
        WRITE(6,*) 'NG'                           
      ENDIF                                                             

      STOP                                                              
      END                                                               
