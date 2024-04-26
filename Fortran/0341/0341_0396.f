      IMPLICIT REAL*4 (A-H,O-Z)
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
  270 J = 2
  271 I = 2
      IF(ABS(RX(I,J)).LE.ABS(RXM))  GOTO  262
      RXM  = RX(I,J)
      IRXM = I
      JRXM = J
  262 IF(ABS(RY(I,J)).LE.ABS(RYM))  GOTO  280
      RYM  = RY(I,J)
      IRYM = I
      JRYM = J
      GOTO 270
  280 PRINT '(a,f11.7,a,25f11.7,a,i10,a,i10)',
     +        "RXM=",RXM,"RX=",RX,"IRXM=",IRXM,"JRXM=",JRXM
      PRINT '(a,f11.7,a,25f11.7,a,i10,a,i10)',
     +        "RYM=",RYM,"RY=",RY,"IRYM=",IRYM,"JRYM=",JRYM
      STOP
      END
