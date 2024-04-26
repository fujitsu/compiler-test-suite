      IMPLICIT REAL*4 (A-H,O-Z)
      PARAMETER (N=6)
      DIMENSION  RX(N,N),RY(N,N)
C
      RXM  = 0
      RYM  = 0
      M=1
      K=1
      L = 5
      M = 2
      P=0
      DO 10 I=1,6
      DO 10 J=1,6
      RX(I,J) = J
      RY(J,I) = J
10    CONTINUE
C
      DO    270    J = 1,L
      DO    270    I = M,N-1
      IF(ABS(RX(I+1,J)).LT.ABS(RXM))  GOTO  262
      RXM  = RX(I,J)
      IRXM = I
      JRXM = J
  262 IF(ABS(RY(I,J)).LT.ABS(RYM))  GOTO  270
      RYM  = RY(I,J)
      IRYM = I
      JRYM = J
  270 CONTINUE
      PRINT '(a,f11.7,a,36f11.7,a,i10,a,i10)',
     +        "RXM=",RXM,"RX=",RX,"IRXM=",IRXM,"JRXM=",JRXM
      PRINT '(a,f11.7,a,36f11.7,a,i10,a,i10)',
     +        "RYM=",RYM,"RY=",RY,"IRYM=",IRYM,"JRYM=",JRYM
      STOP
      END
