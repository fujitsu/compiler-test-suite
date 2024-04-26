      INTEGER*4 I,ERROR1,ERROR2                                         
      REAL*4    R04A(10),R04B(10),CVALUE                                
      COMPLEX*8 C08A(5),C08B(5)                                         

      DATA R04A/0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0/                
     .    ,R04B/0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0/                
     .    ,C08B/(0.0      ,0.0),(1.0,0.0),(1.4142132,0.0)               
     .         ,(1.7320509,0.0),(2.0,0.0)                /              
     .     CVALUE,ERROR1,ERROR2/1.0E-6,0,0/                             

      R04A(2:6)=R04A(1:5)+1.0                                           
      C08A=CSQRT(CMPLX(R04A(1:5)))                                      

      DO I=1,10                                                         
        IF (ABS(R04A(I) - R04B(I)) .GT. CVALUE) THEN                    
          ERROR1=ERROR1+1                                               
        ENDIF                                                           
      ENDDO                                                             
      DO I=1,5                                                          
        IF (ABS(C08A(I) - C08B(I)) .GT. CVALUE) THEN                    
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
