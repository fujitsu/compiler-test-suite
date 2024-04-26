      INTEGER A(10)/10,9,8,7,6,5,4,3,2,1/
      INTEGER B(10)/10,9,8,7,6,5,4,3,2,1/
      READ(5,*) N,K,J
C
      DO 10 I=1,N
        IF (I.LE.5) THEN
          B(J) = A(I) + I
        ELSE
          B(J) = A(I) - I
        ENDIF
        J = J + K
   10 CONTINUE
      WRITE(6,*) B
      STOP
      END
