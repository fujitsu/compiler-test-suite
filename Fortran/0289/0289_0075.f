      INTEGER      I(3)/3,9,60/,N/5/
      REAL    * 4  TW1(3),TW2(3),TW3(3)
      REAL    * 4  TW4(9),TW5(9),TW6(9)
      REAL    * 4  TW7(60),TW8(60),TW9(60)
      DATA         TW1,TW2,TW3/9*1/
      DATA         TW4,TW5,TW6/27*1/
      DATA         TW7,TW8,TW9/180*1/
      REAL,PARAMETER::ANS1=3.00000000,ERROR1=2.38418579e-07
      REAL,PARAMETER::ANS2=7.74596691,ERROR2=0.0
      DO 10 J=1,N
        DO 10 K=1,I(1)
          TW3(K) = SQRT(FLOAT(MAX(I(2),J,K)))
   10 CONTINUE

      PRINT *,ANY(ABS(TW3-ANS1) <= ERROR1)

      DO 20 J=1,N
        DO 20 K=1,I(2)
          TW6(K) = SQRT(FLOAT(MAX(I(3),J,K)))
   20 CONTINUE

      PRINT *,ANY(ABS(TW6-ANS2) <= ERROR2)
      END
