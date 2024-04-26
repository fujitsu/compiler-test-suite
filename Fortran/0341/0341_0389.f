      IMPLICIT REAL*4 (A-H,O-Z)
      PARAMETER (N=5)
      DIMENSION  RX(N,N),RY(N,N)
C
      IRYM= 0
      JRYM= 0
      IRXM= 0
      JRXM= 0
      RXM  = 0.0
      RYM  = 0.0
      M=1
      DO 40 I=1,5
      DO 40 J=1,5
      RX(I,J) = J
      RY(I,J) = I
40    CONTINUE
      I=1
      J=1
3     p=0
      if(RX(I,J).NE.0) GOTO 400
      DO 10 I=1,5
      DO 10 J=1,5
      RY(J,I) = J
10    CONTINUE
      I=1
      J=1
2     q=0
      if(RX(I,J).NE.0) GOTO 300
      DO 20 I=1,5
      DO 20 J=1,5
      RX(I,J) = I
      RY(J,I) = J
20    CONTINUE
C
      L = 5
      M = 2
      DO    270    J = 1,L
      DO    270    I = M,N
      IF(ABS(RX(I,J)).LT.ABS(RXM))  GOTO  262
      RXM  = RX(I,J)
      IRXM = I
      JRXM = J
  262 IF(ABS(RY(I,J)).LT.ABS(RYM))  GOTO  270
      RYM  = RY(I,J)
      IRYM = I
      JRYM = J
  270 CONTINUE
      GOTO 2
  300 GOTO 3

  400 PRINT '(a,f11.7,a,25f11.7,a,i10,a,i10)',
     +        "RXM=",RXM,"RX=",RX,"IRXM=",IRXM,"JRXM=",JRXM
      PRINT '(a,f11.7,a,25f11.7,a,i10,a,i10)',
     +        "RYM=",RYM,"RY=",RY,"IRYM=",IRYM,"JRYM=",JRYM
      STOP
      END
