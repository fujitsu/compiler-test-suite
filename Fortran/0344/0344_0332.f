      PROGRAM MAIN
      INTEGER*4   IA1(50),IC1(50)
      LOGICAL*4   LB1(50)
      REAL*8      DA1(50),DB1(50),DC1(50),DS1
      COMPLEX*8   CB1(50),CS1
      DATA        N1/50/,N2/10/,K/1/,DS1/0.0/,CS1/(0.0,0.0)/
C
      DO 10 I=1,N1
        IA1(I) = 0
        IC1(I) = -I
        LB1(I) = 0.EQ.MOD(I,2)
        DA1(I) = 0
        DB1(I) = I
        DC1(I) = -I
        CB1(I) = I
  10  CONTINUE
C
      DO 20 I=1,N2
        IF(LB1(2)) THEN
          CS1 = CS1 + CB1(I)
          DA1(K) = DB1(I) * DC1(I)
          K = K + 1
          DS1 = DS1 + DB1(K)
          IC1(3) = IC1(3) + IA1(K)
        ENDIF
  20  CONTINUE
      WRITE(6,*) ' CS1 = ',CS1
      WRITE(6,*) ' DA1 = ',DA1
      WRITE(6,*) ' K   = ',K
      WRITE(6,*) ' DS1 = ',DS1
      WRITE(6,*) ' IC1 = ',IC1
      STOP
      END
