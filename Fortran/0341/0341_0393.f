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
      DO    270    J = 1,L
      DO    270    I = M,N
      IF(ABS(RX(I,J)).LT.ABS(RXM))  GOTO  262
      RXM  = RX(I,J)
      if(RXM.EQ.0) GOTO 262
      IRXM = I
      JRXM = J
  262 IF(ABS(RY(I,J)).LT.ABS(RYM))  GOTO  270
      RYM  = RY(I,J)
      if(RY(I,J).EQ.0) GOTO 270
      IRYM = I
      JRYM = J
  270 CONTINUE
      PRINT *,"RXM=",RXM,"RX=",RX,"IRXM=",IRXM,"JRXM=",JRXM
      PRINT *,"RYM=",RYM,"RY=",RY,"IRYM=",IRYM,"JRYM=",JRYM
      STOP
      END
