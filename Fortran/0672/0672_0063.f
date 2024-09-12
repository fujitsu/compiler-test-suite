      DIMENSION     A(5),B(2,2),C(2,2)
      NAMELIST      /NAMEL/ A   , B   , C   , F   , G   ,
     *                      ISW1, ISW2,
     *                      I   , J   , K   , KK  ,
     *                      X   , Y   , M   , N   ,
     *                      TST , ITST, JTST, KTST

      WRITE(6,1000)
 1000 FORMAT(1H1,'SPECIAL CASE (04)')

    1 CONTINUE
         A(1)  = 1.
         A(2)  = 1.
         A(3)  = 1.
         A(4)  = 1.
         A(5)  = 1.
         B(1,1)= 10.
         B(2,1)= 10.
         B(1,2)= 10.
         B(2,2)= 10.
         C(1,1)= 20.
         C(2,1)= 20.
         C(1,2)= 20.
         C(2,2)= 20.
         F     = 1
         G     = 1
         ISW1  = 0
         ISW2  = 0
         I     = 1
         J     = 1
         K     = 1
         KK    = 0
         X     = 10
         Y     = 20
         M     = 30
         N     = 40
         TST   = 0
         ITST  = 0
         JTST  = 0
         KTST  = 0
    2 DO 5  I  = 1 , 5
         TST   = TST + 1
         A(I)  = A(I) + 1.
         IF (ISW1 .EQ. 0 ) GO TO 9
    3 CONTINUE
         ISW1  = ISW1 + 1
         M     = N - I + 1
         F     = F * X + A(I)
         A(I)  = FLOAT(I) + I * 2 + FLOAT(J)
         IF (ISW2 .EQ. 0) GO TO 6
    4 CONTINUE
         ISW2  = ISW2 * 2 +1
         G     = M ** 3 + N ** 2
         F     = F * 10.0
         A(I)  = F / F * F + FLOAT(K)
         ITST  = TST
    5 CONTINUE
         WRITE(6,NAMEL)
      STOP
    6 CONTINUE
         X     = X + 0.1
         A(I)  = I + J + K
    7 DO 8  J  = 1 , 2
         TST   = TST + 1
         JTST  = TST
         C(I,J)= A(I) * A(I) - 4.0
    8 CONTINUE
         IF (ISW2 .EQ. 0) GO TO 4
    9 CONTINUE
         Y     = Y * X + A(I)
         A(I)  = FLOAT(I) + FLOAT(K)
   10 DO 11 K  = 1 , 2
         TST   = TST + 1
         KTST  = KTST + 1
         B(I,K)= A(I) / 10.0
   11 CONTINUE
         KK    = 10
         GO TO 3
      END
