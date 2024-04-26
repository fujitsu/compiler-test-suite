       REAL   *4 A(2000)/2000*1.110/,B(2000)/2000*.0/
       REAL   *4 R1(2000),R2(2000)
       COMMON /BK/N
       DO 10 I= 1,2000
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
