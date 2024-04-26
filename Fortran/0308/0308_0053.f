      INTEGER*4 I04A   ,I04B,I,ERROR1,ERROR2                            
      REAL*4    R04A(3,3,3),R04B(3,3,3),R04C(3,3,3),CVALUE              
      COMPLEX*8 C08A(3,3,3),C08B(3,3,3),C08C(3,3,3)                     
      DATA (((R04B(I,J,N),N=1,3),J=1,3),I=1,3)/27*1.0/   
     .    ,(((R04C(I,J,N),N=1,3),J=1,3),I=1,3)                          
     .                       /27*1.8414707/
     .    ,(((C08B(I,J,N),N=1,3),J=1,3),I=1,3)                          
     .                       /27*(1.0,0.1)/
     .    ,(((C08C(I,J,N),N=1,3),J=1,3),I=1,3)                          
     .         /27*(1.1411200,0.10000002)/
     .    ,CVALUE,ERROR1,ERROR2/1.0E-6,0,0/                             

      I04A=AINT(0.3)                                                    
      I04B=I04A+1                                                       

      R04A=R04B+SIN(DBLE(I04A+1))                                       
      C08A=C08B+SIN(CMPLX(I04B+2))                                      

      DO 10 J=1,3                                                       
        DO 10 N=1,3                                                     
          DO 10 I=1,3                                                   
            IF (ABS(R04A(I,N,J) - R04C(I,N,J)) .GT. CVALUE) THEN        
              ERROR1=ERROR1+1                                           
            ENDIF                                                       
            IF (ABS(C08A(I,N,J) - C08C(I,N,J)) .GT. CVALUE) THEN        
              ERROR2=ERROR2+1                                           
            ENDIF                                                       
   10 CONTINUE                                                          
      IF (ERROR1 .EQ. 0 .AND. ERROR2 .EQ. 0) THEN                       
        WRITE(6,*) 'OK'                           
      ELSE                                                              
        WRITE(6,*) 'NG'                           
      ENDIF                                                             

      STOP                                                              
      END                                                               
