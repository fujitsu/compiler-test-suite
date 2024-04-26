      REAL*4  A(20),B(20),C(20)
      LOGICAL*4  L(20)
      DATA  A/20*2./,B/20*1./,C/20*3./
      DATA L/4*.TRUE.,3*.FALSE.,4*.TRUE.,5*.FALSE.,4*.TRUE./
      DO 10 I=1,20
        T1 = B(I) + C(I)
        IF (L(I)) THEN
          T2 = T1 + A(I)
          T3 = T1 + C(I)
          T1 = B(I)*2.
        ELSE
          T2 = T1 * B(I)
          T3 = B(I)*3.
        ENDIF
        A(I) = T1 + T2 + T3
  10  CONTINUE
      WRITE(6,600) A
 600  FORMAT(1H , 4(5(F7.2,1X),/))
      STOP
      END
