      REAL A(10),B(10),C(10)
      DATA    A/10*1./,B/10*2./
      LOGICAL L(10)
      DATA    L/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,
     1          .TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE./
      INTEGER IL1(10)/1,2,3,4,5,6,7,8,9,10/,N/10/
      CALL  SUB(A,B,C,L,IL1,N)
      END

      SUBROUTINE  SUB(A,B,C,L,IL1,N)
      REAL A(N),B(N),C(N)
      LOGICAL L(N)
      INTEGER IL1(N)

      DO 10 I=1,N
        X    = A(I)
        B(I) = X
        IF(L(I)) THEN
          X = A(I) + B(I)
        ENDIF
        C(I) = X
   10 CONTINUE
      PRINT  *,C

      DO 20 I=1,N
        X    = A(I)
        B(I) = X
        IF(L(I)) THEN
          X = A(I) / B(I)
        ENDIF
        C(I) = X
   20 CONTINUE
      PRINT  *,C

      DO 30 I=1,N
        A(I) = B(I) + C(I)
   30 CONTINUE
      PRINT  *,A

      DO 40 I=1,N
        A(I) = B(I) / C(I)  + A(I)
   40 CONTINUE
      PRINT  *,A

      DO 50 I=1,N
        A(I) = B(IL1(I))
   50 CONTINUE
      PRINT  *,A

      DO 60 I=1,N
        X = A(I)
        IF(L(I)) THEN
          X = B(I)
        ENDIF
        C(I) = X
   60 CONTINUE
      PRINT  *,C

      DO 70 I=1,N
        X = A(I) * B(I)
        IF(L(I)) THEN
          X = A(I)
        ENDIF
        C(I) = X
   70 CONTINUE
      PRINT  *,C

      DO 80 I=1,N
        X = A(I) / B(I)
        IF(L(I)) THEN
          X = A(I) + B(I)
        ENDIF
        C(I) = X
   80 CONTINUE
      PRINT  *,C

      DO 90 I=1,N
        X = A(IL1(I))
        IF(L(I)) THEN
          X = B(I)
        ENDIF
        C(I) = X
   90 CONTINUE

      PRINT  *,C
      RETURN
      END
