      REAL A(10),S
      DATA A/1.,2.,3.,4.,5.,6.,7.,8.,9.,0./
      S = 0
      M = 10
      DO 10 I=1,M
        IF (A(I).GT.5) THEN
           S = S + A(I)
        ENDIF
   10 CONTINUE
      WRITE(6,1) A,S
 1    FORMAT(5F10.5)
      STOP
      END
