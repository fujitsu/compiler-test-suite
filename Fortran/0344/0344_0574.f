      REAL*4  A(20),B(20),C(20)
      LOGICAL*4 L(20)
      DATA  A/20*1./,B/20*2./,C/20*3./
      DATA  L/20*.FALSE./
      DO 5 I=2,20,2
        L(I) = .TRUE.
  5   CONTINUE
      N=1
      DO 10 I=1,20
        IF (L(I)) THEN
          A(I) = B(N) + C(I)
          N = N + 1
        ENDIF
  10  CONTINUE
      N=0
      DO 20 I=1,20
        IF (L(I)) THEN
          N = N + 1
          B(N) = A(I) + C(I)
        ENDIF
  20  CONTINUE
      WRITE(6,600) A
      WRITE(6,600) B
 600  FORMAT(1H , 4(5(F7.2,1X),/,1X))
      STOP
      END
