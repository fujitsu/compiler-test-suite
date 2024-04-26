      PROGRAM MAIN
      INTEGER A(100),B(100),C(100),D(100)
      DATA    N/100/
C
      CALL INIT(A,B,C,D,N)
C
      DO 10 I=1,N
        IF (MOD(I,5).EQ.0) THEN
          IF (MOD(I,5).EQ.0) THEN
            A(I) = MOD(B(I),2) + MOD(C(I),I) + MOD(D(I),3)
            J = MOD(I,3) / (A(I)+1)
            K = MOD(MOD(A(I)+B(I)+C(I),J+1),(MOD(I,2)+1))
            A(I) = (J+K) / B(I) + C(I) + D(I) + B(N) + C(N) + D(N)
          ENDIF
        ENDIF
   10 CONTINUE
      
      WRITE(6,*)
      WRITE(6,1) A
    1 FORMAT(10I7)
      STOP
      END
C
      SUBROUTINE INIT(A,B,C,D,N)
      INTEGER A(N),B(N),C(N),D(N)
      INTEGER L(100)
      DO 100 I=1,N
        IF (I.LE.N) THEN
          L(I) = I
          A(L(I)) = I / 2
          B(L(I)) = INT(SIN(REAL(L(I)))*100)
          C(L(I)) = INT(COS(REAL(I)) + L(I)*100)
          D(L(I)) = L(L(I)) + L(I) - I
        ENDIF
  100 CONTINUE
      RETURN
      END
