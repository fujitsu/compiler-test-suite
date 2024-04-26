       REAL   *4 A(20)/20*1.110/,B(20)/20*.0/
       REAL   *4 R1(20),R2(20)
       COMMON /BK/N
       DO 10 I= 1,20
         IF(N.GT.5) THEN
           IF(N.GT.10) THEN
             R1(I)=A(I)
           ENDIF
         ELSE
           R1(I)=B(I)
         ENDIF
 10    CONTINUE
       DO 20 I= 1,20
       R2(I) = 0
 20    CONTINUE
       WRITE(6,*) R1,R2
       STOP
       END
       BLOCK DATA
       COMMON /BK/N
       DATA N/11/
       END
