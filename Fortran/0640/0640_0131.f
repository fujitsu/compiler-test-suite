      PROGRAM MAIN
      DATA      N1/50/,N2/10/,N3/10/

      INTEGER*4   IA1(50),IB1(50),IC1(50),IS1
      LOGICAL*4   LA1(50),LB1(50),LC1(50),LS1
      REAL        RA1(50),RB1(50),RC1(50),RS1
      REAL*8      DA1(50),DB1(50),DC1(50),DS1
      COMPLEX*8   CA1(50),CB1(50),CC1(50),CS1
      COMPLEX*16  CDA1(50),CDB1(50),CDC1(50),CDS1
      DO 1 I=1,N1
        IA1(I) = 0
        IB1(I) = I
        IC1(I) = -I
        RA1(I) = 0
        RB1(I) = I
        RC1(I) = -I
        LA1(I) = .FALSE.
        LB1(I) = 0.EQ.MOD(I,2)
        LC1(I) = .NOT.LB1(I)
        DA1(I) = 0
        DB1(I) = I
        DC1(I) = -I
        CA1(I) = 0
        CB1(I) = I
        CC1(I) = -I
        CDA1(I) = 0
        CDB1(I) = I
        CDC1(I) = -I
  1   CONTINUE

      RS1 = 0.
      J = 0
      DS1 = 0.
      DO 10 I=1,N2
        IF(LB1(I)) THEN
          RS1 = RS1 + RB1(I)
          J = J + 1
          DA1(J) = DB1(I) * DC1(I)
          DS1 = DS1 + DB1(J)
        ENDIF
  10  CONTINUE
      WRITE(6,*) ' RS1 = ',RS1
      WRITE(6,*) ' J   = ',J
      WRITE(6,*) ' DA1 = ',DA1
      WRITE(6,*) ' DS1 = ',DS1

      K = 1
      CS1 = (0.,0.)
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

      L = 1
      DO 30 I=1,N2
        IF(I.GT.6) THEN
          CS1 = CS1 + CB1(I)
          DA1(L) = DB1(I) * DC1(I)
          RA1(L) = RB1(I) + RC1(I)
          CDA1(L) = CDB1(I) - CDC1(I)
          L = L + 2
          IC1(7) = IC1(7) + IA1(L)
          DS1 = DS1 + DB1(L)
        ENDIF
  30  CONTINUE
      WRITE(6,*) ' CS1 = ',CS1
      WRITE(6,*) ' DA1 = ',DA1
      WRITE(6,*) ' RA1 = ',RA1
      WRITE(6,*) ' CDA1 = ',CDA1
      WRITE(6,*) ' L   = ',L
      WRITE(6,*) ' DS1 = ',DS1
      WRITE(6,*) ' IC1 = ',IC1
      STOP
      END
