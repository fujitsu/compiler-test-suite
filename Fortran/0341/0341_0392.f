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
      DO    270    J = 1,L
      DO    270    I = M,N
      IF(ABS(RX(I,J)).LT.ABS(RXM))  GOTO  262
      RXM  = RX(I,J)
      IRXM = I
      JRXM = J
  262 IF(ABS(RY(I,J)).LT.ABS(RXM))  GOTO  270
      RYM  = RY(I,J)
      IRYM = I
      JRYM = J
  270 CONTINUE

      PRINT '(a,f11.7,a,25f11.7,a,i10,a,i10)',
     +        "RXM=",RXM,"RX=",RX,"IRXM=",IRXM,"JRXM=",JRXM
      PRINT '(a,f11.7,a,25f11.7,a,i10,a,i10)',
     +        "RYM=",RYM,"RY=",RY,"IRYM=",IRYM,"JRYM=",JRYM
      DO    280    J = 1,L
      DO    280    I = M,N
      IF(ABS(RX(I,J)).LT.ABS(RYM))  GOTO  263
      RXM  = RX(I,J)
      IRXM = I
      JRXM = J
  263 IF(ABS(RY(I,J)).LT.ABS(RYM))  GOTO  280
      RYM  = RY(I,J)
      IRYM = I
      JRYM = J
  280 CONTINUE
      PRINT '(a,f11.7,a,25f11.7,a,i10,a,i10)',
     +        "RXM=",RXM,"RX=",RX,"IRXM=",IRXM,"JRXM=",JRXM
      PRINT '(a,f11.7,a,25f11.7,a,i10,a,i10)',
     +        "RYM=",RYM,"RY=",RY,"IRYM=",IRYM,"JRYM=",JRYM
      DO    290    J = 1,L
      DO    290    I = M,N
      IF(ABS(RX(I,J)).LT.ABS(RXM))  GOTO  264
      RXM  = RX(I,J)
      IRXM = I
      JRXM = J
  264 IF(ABS(RY(I,J)).LT.RYM)  GOTO  290
      RYM  = RY(I,J)
      IRYM = I
      JRYM = J
  290 CONTINUE
      PRINT '(a,f11.7,a,25f11.7,a,i10,a,i10)',
     +        "RXM=",RXM,"RX=",RX,"IRXM=",IRXM,"JRXM=",JRXM
      PRINT '(a,f11.7,a,25f11.7,a,i10,a,i10)',
     +        "RYM=",RYM,"RY=",RY,"IRYM=",IRYM,"JRYM=",JRYM
      DO    300    J = 1,L
      DO    300    I = M,N
      IF(ABS(RX(I,J)).LT.RXM)  GOTO  265
      RXM  = RX(I,J)
      IRXM = I
      JRXM = J
  265 IF(ABS(RY(I,J)).LT.ABS(RYM))  GOTO  300
      RYM  = RY(I,J)
      IRYM = I
      JRYM = J
  300 CONTINUE
      PRINT '(a,f11.7,a,25f11.7,a,i10,a,i10)',
     +        "RXM=",RXM,"RX=",RX,"IRXM=",IRXM,"JRXM=",JRXM
      PRINT '(a,f11.7,a,25f11.7,a,i10,a,i10)',
     +        "RYM=",RYM,"RY=",RY,"IRYM=",IRYM,"JRYM=",JRYM
      DO    310    J = 1,L
      DO    310    I = M,N
      IF(ABS(RX(I,J)).LT.RXM)  GOTO  266
      RXM  = RX(I,J)
      IRXM = I
      JRXM = J
  266 IF(ABS(RY(I,J)).LT.RYM)  GOTO  310
      RYM  = RY(I,J)
      IRYM = I
      JRYM = J
  310 CONTINUE
      PRINT '(a,f11.7,a,25f11.7,a,i10,a,i10)',
     +        "RXM=",RXM,"RX=",RX,"IRXM=",IRXM,"JRXM=",JRXM
      PRINT '(a,f11.7,a,25f11.7,a,i10,a,i10)',
     +        "RYM=",RYM,"RY=",RY,"IRYM=",IRYM,"JRYM=",JRYM
      DO    320    J = 1,L
      DO    320    I = M,N
      IF(ABS(RX(I,J)).LT.ABS(RX(I,J)))  GOTO  267
      RXM  = RX(I,J)
      IRXM = I
      JRXM = J
  267 IF(ABS(RY(I,J)).LT.ABS(RYM))  GOTO  320
      RYM  = RY(I,J)
      IRYM = I
      JRYM = J
  320 CONTINUE
      PRINT '(a,f11.7,a,25f11.7,a,i10,a,i10)',
     +        "RXM=",RXM,"RX=",RX,"IRXM=",IRXM,"JRXM=",JRXM
      PRINT '(a,f11.7,a,25f11.7,a,i10,a,i10)',
     +        "RYM=",RYM,"RY=",RY,"IRYM=",IRYM,"JRYM=",JRYM
      DO    330    J = 1,L
      DO    330    I = M,N
      IF(ABS(RX(I,J)).LT.ABS(RXM))  GOTO  268
      RXM  = RX(I,J)
      IRXM = I
      JRXM = J
  268 IF(ABS(RY(I,J)).LT.ABS(RY(I,J)))  GOTO  330
      RYM  = RY(I,J)
      IRYM = I
      JRYM = J
  330 CONTINUE
      PRINT '(a,f11.7,a,25f11.7,a,i10,a,i10)',
     +        "RXM=",RXM,"RX=",RX,"IRXM=",IRXM,"JRXM=",JRXM
      PRINT '(a,f11.7,a,25f11.7,a,i10,a,i10)',
     +        "RYM=",RYM,"RY=",RY,"IRYM=",IRYM,"JRYM=",JRYM
      DO    340    J = 1,L
      DO    340    I = M,N
      IF(ABS(RX(I,J)).LT.ABS(10))  GOTO  269
      RXM  = RX(I,J)
      IRXM = I
      JRXM = J
  269 IF(ABS(RY(I,J)).LT.ABS(RX(I,J)))  GOTO  340
      RYM  = RY(I,J)
      IRYM = I
      JRYM = J
  340 CONTINUE
      PRINT '(a,f11.7,a,25f11.7,a,i10,a,i10)',
     +        "RXM=",RXM,"RX=",RX,"IRXM=",IRXM,"JRXM=",JRXM
      PRINT '(a,f11.7,a,25f11.7,a,i10,a,i10)',
     +        "RYM=",RYM,"RY=",RY,"IRYM=",IRYM,"JRYM=",JRYM
      STOP
      END
