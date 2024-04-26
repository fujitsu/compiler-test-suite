      REAL A(10)/10*0/,B(10)/10*2/,C(10)/10*1/
      INTEGER L(10)/10*1/
      DO 1 J=2,9
      DO 1 I=2,9
1     IF(J.GT.5) A(I)=SQRT(B(1))

      DO 2 J=1,9
      DO 2 I=1,9
2     IF(A(1).NE.0) C(I)=C(I)/A(1)
      WRITE(6,*) A
      STOP
      END
