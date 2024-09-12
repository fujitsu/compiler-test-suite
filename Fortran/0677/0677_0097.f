      COMMON A,II
      INTEGER*4 A(10),II
      DATA A/10*1/,II/0/

      DO 10 I=1,10
10        II=II+A(I)
      WRITE(6,*)A,II
      END
