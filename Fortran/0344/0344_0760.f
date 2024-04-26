      REAL*4    R4A(100),R4B(100),R4C(100),R4D(100)
      INTEGER*4 RC/1/
      DATA      R4A/100*0/,
     1          R4B/100*1/,
     2          R4C/100*2/,R4D/100*0/
C
      DO 200 RC= 1,100,5
      DO 100 I = 2,100
        R4A(RC) = R4A(RC) * R4B(I) + R4C(I)
        R4D(I)  = R4A(RC)
  100 CONTINUE
      WRITE(6,1) (R4D(j),j=1,100,10)
  200 CONTINUE
C
      WRITE(6,1) (R4A(j),j=1,100,10)
1     format(10f8.2)
      STOP
      END
