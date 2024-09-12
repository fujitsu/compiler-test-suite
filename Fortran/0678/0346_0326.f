      PROGRAM MAIN
      COMPLEX  C1(10),C2(10)
      REAL     A(10),B(10),C(10)
      DATA     A,B,C/10*1.0,10*0.5,10*3.0/
      DATA     C1,C2/10*(1.0,1.0),10*(0.5,0.5)/
      DATA     N/9/

      VMAX = 0.0
      MAXI = 0
      VMIN = 0.0
      MINI = 0
      DO 10 I=1,10
        IF(A(I).GT.VMAX) THEN
          VMAX = A(I)
          MAXI = I
        ENDIF
        IF(B(I).LT.VMIN) THEN
          VMIN = B(I)
          MINI = I
        ENDIF
   10 CONTINUE
      PRINT  *,VMAX,MAXI,VMIN,MINI

      DO 20 I=1,10
        C(I) = SIN(B(I))
        C(I) = SIN(B(I))
        C1(I) = CCOS(C2(I))
        C1(I) = CCOS(C2(I))
   20 CONTINUE
      WRITE(6,100) C,C1
  100 FORMAT(' ',5F10.5/' ',5F10.5/' ',5F10.5/
     1       ' ',5F10.5/' ',5F10.5/' ',5F10.5)

      DO 30 I=2,N
        A(I) = A(I-1) + B(I)
        C(I) = A(I) * B(I)
   30 CONTINUE
      WRITE(6,200) A,C
200   FORMAT(' ',5F10.5)
      STOP
      END
