      LOGICAL  L(10)/10*.TRUE./
      DIMENSION A(10,10),B(10,10)
      DATA      A,B/100*0.0,100*5.0/
      DO 20 J=1,10
        IF(J.LE.5) L(J) = .FALSE.
        DO 10 I=1,10
          IF(L(I)) A(I,J) = A(I,J) + B(I,J)
   10   CONTINUE
   20 CONTINUE
      WRITE(6,*) A
      STOP
      END
