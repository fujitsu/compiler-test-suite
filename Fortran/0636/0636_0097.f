      PARAMETER (N=100)
      REAL A(N),B(N)
      READ(5,10,END=100) IDATA
  100 A(1)=1.0
      B(1)=3.8
      DO 20 I=1,N
      A(I)=REAL(I)-0.01
      B(I)=A(I)+I
   20 CONTINUE
      SUM=0.0
      DO 30 I=1,N
      SUM=SUM+A(I)+B(I)
   30 CONTINUE
      X=SUM/REAL(IDATA)
      IF (ABS(X - 1.2270572)/ABS(X) .GT. 1.0E-5) THEN
        PRINT *,"NG"
      ELSE
        PRINT *,"OK"
      ENDIF
      STOP
   10 FORMAT(I5)
      END
