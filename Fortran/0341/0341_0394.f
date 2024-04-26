      IMPLICIT REAL*8 (A-H,O-Z)
      PARAMETER (N=5)
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
      DO    280    J = 1,L
      DO    280    I = M,N
      IF(ABS(RX(I,J)).LT.ABS(RXM))  GOTO  264
      RXM  = RX(I,J)
      IRXM = I
  264 JRXM = J
      IF(ABS(RY(I,J)).LT.ABS(RYM))  GOTO  280
      RYM  = RY(I,J)
      IRYM = I
      JRYM = J
  280 CONTINUE
      PRINT *,"RXM=",RXM,"RX=",RX,"IRXM=",IRXM,"JRXM=",JRXM
      PRINT *,"RYM=",RYM,"RY=",RY,"IRYM=",IRYM,"JRYM=",JRYM
      STOP
      END
