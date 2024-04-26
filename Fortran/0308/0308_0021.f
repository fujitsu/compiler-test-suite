      INTEGER*4   I04A(5),I04B(5),        I04D(5),I04I,I04J,I           
     .           ,ERROR1,ERROR2,ERROR3                                  
      REAL*4      R04A(5),R04B(5),R04C(5),R04D(5),CVALUE                
      CHARACTER*5 CH5A(5),CH5B(5),CH5C(5)                               
      DATA        I04A/   1   ,   2   ,   3   ,   4   ,   5   /         
     .           ,I04D/   1   ,   4   ,   9   ,  16   ,  25   /         
     .           ,R04A/   1.0 ,   2.0 ,   3.0 ,   4.0 ,   5.0 /         
     .           ,R04D/5*0.41657680/                                    
     .           ,CH5A/'ABCDE','ABCDE','ABCDE','ABCDE','ABCDE'/         
     .           ,CH5C/5*'ABCDE'/                                       
     .           ,CVALUE,ERROR1,ERROR2,ERROR3/1.0E-6,3*0/               
                                                                        

      I04I=INT(2.5)                                                     
      I04J=ANINT(2.5)                                                   

      I04B=I04A**I04I                                                   
      R04A=I04J                                                         
      R04B=SIN(R04A)                                                    
      R04C=COS(R04B+1.0)                                                
      CH5B=CH5A                                                         
   20 CONTINUE                                                          
      DO I=1,5                                                          
        IF(I04B(I)                .NE. I04D(I)) ERROR1=ERROR1+1         
        IF(ABS(R04C(I) - R04D(I)) .GT. CVALUE)  ERROR2=ERROR2+1         
        IF(CH5B(I)                .NE. CH5C(I)) ERROR3=ERROR3+1         
      ENDDO                                                             
      IF(ERROR1 .EQ. 0 .AND. ERROR2 .EQ. 0 .AND. ERROR3 .EQ. 0) THEN    
        WRITE(6,*) 'OK'                           
      ELSE                                                              
        WRITE(6,*) 'NG'                           
      ENDIF                                                             

      STOP                                                              
      END                                                               
