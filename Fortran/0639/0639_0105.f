      REAL   A(20),B(20),C(20),D(20),A1024(1024)
      REAL*8 A8(20),B8(20),C8(20)
      REAL*8 AA(11,10)/110*2.D0/
      DATA    A/20*1./,B/20*2./,C/20*8./,D/20*4./,S1/1./,S2/2./
      DATA    A8/20*1.D0/,B8/20*2.D0/,C8/20*8.D0/
      LOGICAL L(10)
      DATA    L/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,
     1          .TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE./
      INTEGER IL1(10)/1,2,3,4,5,6,7,8,9,10/,
     1        IL2(10)/10*0/
      DO 1 I=1,1024
        A1024(I) = I
    1 CONTINUE

      DO 10 I=1,10
        A(I) = B(IL1(I)+IL2(I))
   10 CONTINUE
      PRINT  *,A

      X = 0.
      DO 20 I=1,10
        X = X + A(I)
        B(I) = (C(I) + S1) + (D(I) + S2)
   20 CONTINUE
      PRINT  *,X,B

      M = 0
      DO 30 I=1,10
        IF(L(I)) M = M + 1
        B(I) = (C(I) + S1) + (D(I) + S2)
   30 CONTINUE
      PRINT  *,M,B

      X  = 0.
      IX = 0
      DO 40 I=1,10
        IF(X.GT.A(I)) THEN
          X  = A(I)
          IX = I
        ENDIF
   40 CONTINUE
      PRINT  *,X,IX

      DO 50 I=1,10
        A(I) = B(I+2) + D(I+3)
   50 CONTINUE
      PRINT  *,A

      DO 55 I=1,10
        A8(I) = B8(I+2) + C8(I+3)
   55 CONTINUE
      PRINT  *,A8

      DO 60 I=1,1024
        A1024(I) = A1024(I) + S1
   60 CONTINUE
      PRINT  *,(A1024(I),I=1,1024,100)

      DO 70 J=1,10
        DO 70 I=1,10
          AA(I,J) = AA(11,J) + B(I)
   70 CONTINUE
      PRINT  *,((AA(I,J),I=1,10,2),J=1,10,3)
      END
