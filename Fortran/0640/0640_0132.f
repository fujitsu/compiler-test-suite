      PROGRAM MAIN
      DATA      N1/50/,N2/10/,N3/10/

      INTEGER*4   IA1(50),IB1(50),IC1(50),IS1,IS2
      LOGICAL*4   LA1(50),LB1(50),LC1(50),LS1,LS2
      REAL        RA1(50),RB1(50),RC1(50),RS1,RS2
      REAL*8      DA1(50),DB1(50),DC1(50),DS1,DS2
      COMPLEX*8   CA1(50),CB1(50),CC1(50),CS1,CS2
      COMPLEX*16  CDA1(50),CDB1(50),CDC1(50),CDS1,CDS2
      DO 1 I=1,N1
        IA1(I) = 0
        IB1(I) = I
        IC1(I) = -I
        RA1(I) = 0
        RB1(I) = I
        RC1(I) = -I
        LA1(I) = .TRUE.
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
      RS2 = 0.
      IS2 = 0
      DS1 = 0.
      DS2 = 0.
      CDS1 = 0.
      J = 0
      K = 1
      L = 1
      DO 10 I=1,N2
        IF(LC1(I)) THEN
          LS1 = RA1(I).GT.RB1(I)
          DS2 = DMAX1(DS2,ABS(DC1(K)))
          CA1(I) = CB1(K) - CC1(K)
          K = K + 2
          IF(LC1(I).OR.LS1) THEN
            RS1 = RS1 + RB1(I)
            J = J + 1
            DA1(J) = DB1(I) * DC1(I)
            DS1 = DS1 + DB1(J)
            IF(RS2.GT.RA1(I)) THEN
              RS2 = RA1(I)
              IS2 = I
            ENDIF
            L = L + 1
            LS2 = DB1(L).NE.DC1(I)
            LA1(I) = LS2
          ENDIF
        ENDIF
  10  CONTINUE
      WRITE(6,*) ' DS2 = ',DS2
      WRITE(6,*) ' CA1 = ',CA1
      WRITE(6,*) ' K   = ',K
      WRITE(6,*) ' RS1 = ',RS1
      WRITE(6,*) ' J   = ',J
      WRITE(6,*) ' DA1 = ',DA1
      WRITE(6,*) ' DS1 = ',DS1
      WRITE(6,*) ' RS2 = ',RS2
      WRITE(6,*) ' IS2 = ',IS2
      WRITE(6,*) ' L   = ',L
      WRITE(6,*) ' LA1 = ',LA1
      STOP
      END
