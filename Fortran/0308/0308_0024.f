      INTEGER*4   I04A(5),I,ERROR1,ERROR2                               
      REAL*4      R04A(5),R04B(5),CVALUE                                
      COMPLEX*8   C08A(5),C08B(5)                                       
      DATA        I04A/1,2,3,4,5/                                       
     .            R04B/1.0,2.0,3.0,4.0,5.0/                             
     .            C08B/(1.0,0.0),(1.4142132,0.0),(1.7320499,0.0)        
     .                ,(2.0,0.0),(2.2360668,0.0)                /       
     .            CVALUE,ERROR1,ERROR2/1.0E-5,2*0/                      
                                                                        

      R04A=I04A
      C08A=CSQRT(CMPLX(R04A))

      DO I=1,5                                                          
        IF(ABS(R04A(I) - R04B(I)) .GT. CVALUE) ERROR1=ERROR1+1          
        IF(ABS(C08A(I) - C08B(I)) .GT. CVALUE) ERROR2=ERROR2+1          
      ENDDO                                                             
      IF(ERROR1 .EQ. 0 .AND. ERROR2 .EQ. 0) THEN                        
        WRITE(6,*) 'OK'                           
      ELSE                                                              
        WRITE(6,*) 'NG'                           
      ENDIF                                                             

      STOP                                                              
      END                                                               
