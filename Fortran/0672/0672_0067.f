          REAL A(10),B(10),C(10)
          REAL D(10)
          DO 10 I=1,10
          L=10-I+1
          A(L)=0.
          IF(L.EQ.5) A(L)=A(L)
  10      CONTINUE

          DO 20 J=1,10
          K=J-1+1
   20     B(K)=J

          I=10
  30      C(I)=I
          I=I-1
          IF(I.GT.0) GO TO 30

          DO 40 I=1,10
  40      A(I)=B(I)*C(I)
          IERR=0
          DO 50 I=1,10
          L=1-I+10
          IF(L.GT.5) GO TO 60
          D(L)=B(I)*C(I)
          GO TO 50
  60      D(L)=C(I)*B(I)
  50      CONTINUE
          DO 70 I=1,5
          K=1-I+10
          W=D(K)
          D(K)=D(I)
  70      D(I)=W
          DO 80 K=1,10
          IF(A(K).NE.D(K)) IERR=IERR+1
  80      CONTINUE
          IF(IERR.NE.0) WRITE(6,200)
          IF(IERR.EQ.0) WRITE(6,300)
 200      FORMAT('      ERROR IS     DETECTECTED BY THIS PROGRAM')
  300     FORMAT('      ERROR IS NOT DETECTECTED BY THIS PROGRAM')
          STOP
          END
