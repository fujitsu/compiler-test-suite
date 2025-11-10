      INTEGER*8 A1,      A2,X
      PARAMETER (X=           123456789012345678)
      DATA      A1      ,A2/2*X/
      REAL*8    B1,B2,B3,B4/X/
      REAL*16   C1,C2,C3,C4/X/
      COMPLEX*16D1,D2,D3,D4/X/
      COMPLEX*32E1,E2,E3,E4/X/
      PARAMETER (B3=X,C3=X,D3=X,E3=X)
      B1()=A1
      C1()=A1
      D1()=A1
      E1()=A1
      B2=A2
      C2=A2
      D2=A2
      E2=A2
      PRINT *,B2,B1(),B3,B4
      PRINT *,C2,C1(),C3,C4
      PRINT *,D2,D1(),D3,D4
      PRINT *,E2,E1(),E3,E4
      CALL C(B1(),X)
      CALL C(B2  ,X)
      CALL C(B3  ,X)
      CALL C(B4  ,X)
      CALL D(C1(),X)
      CALL D(C2  ,X)
      CALL D(C3  ,X)
      CALL D(C4  ,X)
      CALL E(D1(),X)
      CALL E(D2  ,X)
      CALL E(D3  ,X)
      CALL E(D4  ,X)
      CALL F(E1(),X)
      CALL F(E2  ,X)
      CALL F(E3  ,X)
      CALL F(E4  ,X)
      PRINT *,'PASS'
      END
      SUBROUTINE C(D,I8)
      REAL*8 D
      INTEGER*8 I8
#if defined(_WIN32) || defined(__i386)
      IF (ABS(D-I8).GE.10.D0)PRINT *,'FAIL'
#else
      IF (ABS(D-I8).GE.0.0000000001D0)PRINT *,'FAIL'
#endif
      END
      SUBROUTINE D(Q,I8)
      REAL*16 Q
      INTEGER*8 I8
      IF (ABS(Q-I8).GE.0.0000000001Q0)PRINT *,'FAIL'
      END
      SUBROUTINE E(Q,I8)
      COMPLEX*16 Q
      INTEGER*8 I8
#if defined(_WIN32) || defined(__i386)
      IF (ABS(Q-I8).GE.10.D0)PRINT *,'FAIL'
#else
      IF (ABS(Q-I8).GE.0.0000000001D0)PRINT *,'FAIL'
#endif
      END
      SUBROUTINE F(Q,I8)
      COMPLEX*32 Q
      INTEGER*8 I8
      IF (ABS(Q-I8).GE.0.0000000001Q0)PRINT *,'FAIL'
      END
