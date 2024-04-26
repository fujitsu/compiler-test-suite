      IMPLICIT REAL*4 (A-H,O-Z)
      PARAMETER (N=5)
      common /cmn/ RX,RY,RXM,RYM
      DIMENSION  RX(N,N),RY(N,N)
C
      RXM  = 0
      RYM  = 0
      M=1
      L = 5
      M = 2
      P=0
      DO 10 I=1,5
      DO 10 J=1,5
      RX(I,J) = J
      RY(J,I) = J
10    CONTINUE
C
      i=1
      DO    270    J = 1,L
      IF(ABS(RX(I,J)).LT.ABS(RXM))  GOTO  270
      RXM  = RX(I,J)
      IRXM = I
      JRXM = J
  270 CONTINUE
      PRINT '(a,f11.7,a,25f11.7,a,i10,a,i10)',
     +        "RXM=",RXM,"RX=",RX,"IRXM=",IRXM
      PRINT '(a,f11.7,a,25f11.7,a,i10,a,i10)',
     +        "RYM=",RYM,"RY=",RY,"JRYM=",JRXM
      STOP
      END
