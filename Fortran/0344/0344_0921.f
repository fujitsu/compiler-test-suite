       REAL*8 A(10,10)/100*0/
       REAL*8 B(10,10)/100*0/
       REAL*8 C(10,10)/100*0/
       INTEGER*4 I/1/,J/1/,K/1/
C
       DO 10 I=1,10
         DO 20 J=1,5
           A(I,J) = I
           B(I,J) = J
           C(I,J) = I + J
   20    CONTINUE
         DO 30 J=6,10
           A(I,J) = J
           B(I,J) = I
           C(I,J) = I - J
   30    CONTINUE
         IF(C(I,5).GT.10) THEN
           DO 40 J=1,10
             DO 40 K=1,10
               A(J,K) = J + 1
               B(J,K) = K - 1
               C(J,K) = J * K
   40      CONTINUE
         ELSE
           DO 50 J=1,10
             DO 50 K=1,10
               A(J,K) = J - 1
               B(J,K) = K + 1
               C(J,K) = J / K
   50      CONTINUE
         ENDIF
   10  CONTINUE
C
       DO 100 I=1,5
         DO 100 J=1,5
           WRITE(6,*) A(I,J)
           WRITE(6,*) B(I,J)
           WRITE(6,*) C(I,J)
  100  CONTINUE
C
       STOP
       END
