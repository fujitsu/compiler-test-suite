      INTEGER*2   A1(10,10),A2(10,10)
      INTEGER*4   B1(10,10),B2(10,10)
      REAL*4      C1(10,10),C2(10,10)
      REAL*8      D1(10,10),D2(10,10)
      COMPLEX*8   E1(10,10),E2(10,10)
      COMPLEX*16  F1(10,10),F2(10,10)
      LOGICAL*1   G1(10,10),G2(10,10)
      LOGICAL*4   H1(10,10),H2(10,10)
      CHARACTER*1 I1(10,10),I2(10,10)
      CHARACTER*4 J1(10,10),J2(10,10)
      INTEGER     N
C
      DATA A1,A2/200*0/
      DATA B1,B2/200*0/
      DATA C1,C2/200*0.0/
      DATA D1,D2/200*0.0E+00/
      DATA E1,E2/200*(0.0,0.0)/
      DATA F1,F2/200*(0.0,0.0)/
      DATA G1,G2/200*.TRUE./
      DATA H1,H2/200*.FALSE./
      DATA I1,I2/200*' '/
      DATA J1,J2/200*'    '/
      DATA N/10/
C
      CALL SUB(A1,B1,C1,D1,E1,F1,G1,H1,I1,J1,
     +         A2,B2,C2,D2,E2,F2,G2,H2,I2,J2,N)
C
      STOP
      END
C
      SUBROUTINE SUB(A1,B1,C1,D1,E1,F1,G1,H1,I1,J1,
     +               A2,B2,C2,D2,E2,F2,G2,H2,I2,J2,N)
C
      INTEGER*2   A1(N,N),A2(N,N)
      INTEGER*4   B1(N,N),B2(N,N)
      REAL*4      C1(N,N),C2(N,N)
      REAL*8      D1(N,N),D2(N,N)
      COMPLEX*8   E1(N,N),E2(N,N)
      COMPLEX*16  F1(N,N),F2(N,N)
      LOGICAL*1   G1(N,N),G2(N,N)
      LOGICAL*4   H1(N,N),H2(N,N)
      CHARACTER*1 I1(N,N),I2(N,N)
      CHARACTER*4 J1(N,N),J2(N,N)
      INTEGER     N
C
      A1(N,N) = A2(N,N)
      B1(N,N) = B2(N,N)
      C1(N,N) = C2(N,N)
      D1(N,N) = D2(N,N)
      E1(N,N) = E2(N,N)
      F1(N,N) = F2(N,N)
      G1(N,N) = G2(N,N)
      H1(N,N) = H2(N,N)
      I1(N,N) = I2(N,N)
      J1(N,N) = J2(N,N)
C
      WRITE(6,*) A1,B1,C1,D1,E1,F1,G1,H1,I1,J1
      WRITE(6,*) A2,B2,C2,D2,E2,F2,G2,H2,I2,J2,N
C
      RETURN
      END
