      IMPLICIT integer*2 (A-H,R)
      IMPLICIT integer*4 (S)
      IMPLICIT real*4 (T)
      IMPLICIT real*8 (U)
      PARAMETER (N=5)
      DIMENSION  RX(N,N),RY(N,N)
      DIMENSION  SX(N,N),SY(N,N)
      DIMENSION  TX(N,N),TY(N,N)
      DIMENSION  UX(N,N),UY(N,N)
C
      RXM  = 0.0
      RYM  = 0.0
      SXM  = 0.0
      SYM  = 0.0
      TXM  = 0.0
      TYM  = 0.0
      UXM  = 0.0
      UYM  = 0.0
      M=1
      L = 5
      M = 2
      p=0
      q=0
      DO 10 I=1,5
      DO 10 J=1,5
      RX(I,J) = J
      RY(J,I) = J
      SX(I,J) = J
      SY(J,I) = J
      TX(I,J) = J
      TY(J,I) = J
      UX(I,J) = J
      UY(J,I) = J
10    CONTINUE
C
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
      PRINT *,"RXM=",RXM,"RX=",RX,"IRXM=",IRXM,"JRXM=",JRXM
      PRINT *,"RYM=",RYM,"RY=",RY,"IRYM=",IRYM,"JRYM=",JRYM
      DO    280    J = 1,L
      DO    280    I = M,N
      IF(ABS(SX(I,J)).LT.ABS(SXM))  GOTO  263
      SXM  = SX(I,J)
      IRXM = I
      JRXM = J
  263 IF(ABS(SY(I,J)).LT.ABS(SYM))  GOTO  280
      SYM  = SY(I,J)
      IRYM = I
      JRYM = J
  280 CONTINUE
      PRINT *,"SXM=",SXM,"SX=",SX,"IRXM=",IRXM,"JRXM=",JRXM
      PRINT *,"SYM=",SYM,"SY=",SY,"IRYM=",IRYM,"JRYM=",JRYM
      DO    290    J = 1,L
      DO    290    I = M,N
      IF(ABS(TX(I,J)).LT.ABS(TXM))  GOTO  264
      TXM  = TX(I,J)
      IRXM = I
      JRXM = J
  264 IF(ABS(TY(I,J)).LT.ABS(TYM))  GOTO  290
      TYM  = TY(I,J)
      IRYM = I
      JRYM = J
  290 CONTINUE

      PRINT '(a,f11.7,a,25f11.7,a,i10,a,i10)',
     +        "TXM=",TXM,"TX=",TX,"IRXM=",IRXM,"JRXM=",JRXM
      PRINT '(a,f11.7,a,25f11.7,a,i10,a,i10)',
     +        "TYM=",TYM,"TY=",TY,"IRYM=",IRYM,"JRYM=",JRYM
      DO    300    J = 1,L
      DO    300    I = M,N
      IF(ABS(UX(I,J)).LT.ABS(UXM))  GOTO  265
      UXM  = UX(I,J)
      IRXM = I
      JRXM = J
  265 IF(ABS(UY(I,J)).LT.ABS(UYM))  GOTO  300
      UYM  = UY(I,J)
      IRYM = I
      JRYM = J
  300 CONTINUE
      PRINT '(a,f17.13,a,25f17.13,a,i10,a,i10)',
     +        "UXM=",UXM,"UX=",UX,"IRXM=",IRXM,"JRXM=",JRXM
      PRINT '(a,f17.13,a,25f17.13,a,i10,a,i10)',
     +        "UYM=",UYM,"UY=",UY,"IRYM=",IRYM,"JRYM=",JRYM
      STOP
      END
