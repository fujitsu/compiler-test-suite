      INTEGER*4   I04A(5),I04B(5),I,ERROR1,ERROR2,ERROR3                
      REAL*4      R04A(5),CVALUE                                        
      COMPLEX*8   C08A(5),C08B(5)                                       
      LOGICAL*4   L04A(5),L04B(5)                                       
      CHARACTER*5 CH5A(5),CH5B(5)                                       
      DATA        I04A/   1   ,   2   ,   3   ,   4   ,   5   /         
     .           ,I04B/   4   ,   8   ,  12   ,  16   ,  20   /         
     .           ,R04A/   1.0 ,   2.0 ,   3.0 ,   4.0 ,   5.0 /         
     .           ,C08B/(1.0      ,0.0),(1.4142132,0.0)                  
     .                ,(1.7320509,0.0),(2.0      ,0.0)                  
     .                ,(2.2360678,0.0)                /                 
     .           ,L04B/ .TRUE., .FALSE., .FALSE., .FALSE., .FALSE./         
     .           ,CH5A/'ABCDE','ABCDE','ABCDE','ABCDE','ABCDE'/         
     .           ,CH5B/'ABCDE','ABCDF','ABCEF','ABDEF','ACDFG'/         
     .           ,CVALUE,ERROR1,ERROR2,ERROR3/1.0E-6,3*0/               
                                                                        

      I04A=ISHFT(I04A,2)                                                
      L04A= CH5A .EQ. CH5B                                              
      C08A=CSQRT(CMPLX(R04A))                                           

      DO I=1,5                                                          
        IF(I04A(I)                .NE.  I04B(I)) ERROR1=ERROR1+1        
        IF(L04A(I)               .NEQV. L04B(I)) ERROR2=ERROR2+1        
        IF(ABS(C08A(I) - C08B(I)) .GT.  CVALUE ) ERROR3=ERROR3+1        
      ENDDO                                                             
      IF(ERROR1 .EQ. 0 .AND. ERROR2 .EQ. 0 .AND. ERROR3 .EQ. 0) THEN    
        WRITE(6,*) 'OK'                           
      ELSE                                                              
        WRITE(6,*) 'NG'                           
      ENDIF                                                             

      STOP                                                              
      END                                                               
