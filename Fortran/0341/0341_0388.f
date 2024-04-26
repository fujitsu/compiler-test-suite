      IMPLICIT REAL*4 (A-H,O-Z)
      PARAMETER (N=5)
      DIMENSION  RX(N,N),RY(N,N)
C
      RXM  = 0.0
      RYM  = 0.0
      M=1
      L = 5
      M = 2
      p=0
      q=0
      DO 10 I=1,5
      DO 10 J=1,5
      RX(I,J) = J
      RY(J,I) = J
10    CONTINUE
C
      DO    270    K = 1,1
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
  271 DO    280    J = 1,2
      DO    280    I = 3,4
      IF(ABS(RX(I,J)).LT.ABS(RXM))  GOTO  263
      RXM  = RX(I,J)
      IRXM = I
      JRXM = J
  263 IF(ABS(RY(I,J)).LT.ABS(RYM))  GOTO  280
      RYM  = RY(I,J)
      IRYM = I
      JRYM = J
  280 CONTINUE
      IF(RX(1,1).NE.0) GOTO 290
	GOTO 271

  290 PRINT '(a,f11.7,a,25f11.7,a,i10,a,i10)',
     +        "RXM=",RXM,"RX=",RX,"IRXM=",IRXM,"JRXM=",JRXM
  291 PRINT '(a,f11.7,a,25f11.7,a,i10,a,i10)',
     +        "RYM=",RYM,"RY=",RY,"IRYM=",IRYM,"JRYM=",JRYM
      DO    400    J = 1,2
      DO    400    I = 3,4
      IF(ABS(RX(I,J)).LT.ABS(RXM))  GOTO  264
      RXM  = RX(I,J)
      IRXM = I
      JRXM = J
  264 IF(ABS(RY(I,J)).LT.ABS(RYM))  GOTO  400
      RYM  = RY(I,J)
      IRYM = I
      JRYM = J
  400 CONTINUE
      IF(RX(1,1).NE.0) GOTO 500
	GOTO 291
  500 PRINT '(a,f11.7,a,25f11.7,a,i10,a,i10)',
     +        "RYM=",RYM,"RY=",RY,"IRYM=",IRYM,"JRYM=",JRYM
      IF(RX(1,1).NE.0) GOTO 300
	GOTO 290
  300 PRINT '(a,f11.7,a,25f11.7,a,i10,a,i10)',
     +        "RXM=",RXM,"RX=",RX,"IRXM=",IRXM,"JRXM=",JRXM
      PRINT '(a,f11.7,a,25f11.7,a,i10,a,i10)',
     +        "RYM=",RYM,"RY=",RY,"IRYM=",IRYM,"JRYM=",JRYM
      STOP
      END
