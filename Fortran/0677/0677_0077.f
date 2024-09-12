       REAL   *4 A(10),B(10),N
       DATA   B/10*5/,A/10*5/
       N=10
       DO 10 I=1, 10
         A(I)=B(I)**5
         IF(N.GT.5) THEN
          IF(I.GT.5) THEN
            A(I) = B(I) **2
          ELSE
            A(I) = B(I) **3
          ENDIF
        ENDIF
 10    CONTINUE
       WRITE(6,*) A,B,N
       STOP
       END
