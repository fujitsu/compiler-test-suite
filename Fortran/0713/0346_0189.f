       REAL   *4 A(2560)/2560*1.110/,B(2560)/2560*.0/
       REAL   *4 R1(2560)
       COMMON /BK/N
       DO 10 I= 1,2560
         IF(N.GT.5) THEN
           IF(N.GT.10) THEN
             R1(I)=A(I)
           ENDIF
         ELSE
           R1(I)=B(I)
         ENDIF
 10    CONTINUE
       WRITE(6,*) R1
       STOP
       END
       BLOCK DATA
       COMMON /BK/N
       DATA N/11/
       END
