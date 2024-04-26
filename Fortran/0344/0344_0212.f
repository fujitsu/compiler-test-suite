      INTEGER A(100)
      LOGICAL*1 T(100),T2,T3(1)/.FALSE./
      DATA A/100*1/,N/100/
      DO 10 I=1,N
         T(I) = BTEST(A(I),2)
   10 CONTINUE
      WRITE(6,*) T
C
      DO 1 I=1,10
    1   N = I + 10
C
      DO 20 I=1,N
         T2 = BTEST(A(I),1)
   20 CONTINUE
C
      WRITE(6,*) T2
C
      DO 30 I=1,N
         T3(1) = BTEST(A(I),0)
   30 CONTINUE
      WRITE(6,*) T3
      STOP
      END
