      PROGRAM CV4402
      DATA      N1/50/,N2/10/,N3/10/
      DATA  I1/0/,I2/1/,I3/1/,I4/0/,I5/0/,I6/0/,I7/0/,I8/0/,I9/0/
      DATA  I10/0/,I11/0/,I12/0/,I13/0/,I14/0/,I15/0/,I16/0/,I17/0/
      DATA  I18/0/
      type STR
         LOGICAL*4   MASK(50)/50*.TRUE./
         INTEGER*4   IA1(50),IB1(50),IC1(50),IS1,IS2
         LOGICAL*4   LA1(50),LB1(50),LC1(50),LS1,LS2
         REAL        RA1(50),RB1(50),RC1(50),RS1,RS2
         REAL*8      DA1(50),DB1(50),DC1(50),DS1,DS2
         COMPLEX*8   CA1(50),CB1(50),CC1(50),CS1,CS2
         COMPLEX*16  CDA1(50),CDB1(50),CDC1(50),CDS1,CDS2
      END type STR
      TYPE(STR) STR_DATA

      DO 1 I=1,N1
        IF(STR_DATA%MASK(I)) THEN
         I1 = I1 + 1
         STR_DATA%IA1(I1) = I
         STR_DATA%IB1(I2) = -I
         I2 = I2 + 1
         STR_DATA%IC1(I3) = I + I
         I3 = I3 + 1
         I4 = I4 + 1
         STR_DATA%RA1(I4) = 0
         I5 = I5 + 1
         STR_DATA%RB1(I5) = I
         I6 = I6 + 1
         STR_DATA%RC1(I6) = -I
         I7 = I7 + 1
         STR_DATA%LA1(I7) = .TRUE.
         I8 = I8 + 1
         STR_DATA%LB1(I8) = 0.EQ.MOD(I,2)
         I9 = I9 + 1
         STR_DATA%LC1(I9) = .NOT.(0.EQ.MOD(I,2))
         I10 = I10 + 1
         STR_DATA%DA1(I10) = 0
         I11 = I11 + 1
         STR_DATA%DB1(I11) = I
         I12 = I12 + 1
         STR_DATA%DC1(I12) = -I
         I13 = I13 + 1
         STR_DATA%CA1(I13) = 0
         I14 = I14 + 1
         STR_DATA%CB1(I14) = I
         I15 = I15 + 1
         STR_DATA%CC1(I15) = -I
         I16 = I16 + 1
         STR_DATA%CDA1(I16) = 0
         I17 = I17 + 1
         STR_DATA%CDB1(I17) = I
         I18 = I18 + 1
         STR_DATA%CDC1(I18) = -I
        ENDIF
  1   CONTINUE
      STR_DATA%RS1 = 0.
      STR_DATA%RS2 = 0.
      STR_DATA%IS2 = 0
      STR_DATA%DS1 = 0.
      STR_DATA%DS2 = 0.
      STR_DATA%CDS1 = 0.
      J = 0
      K = 1
      L = 1
      DO 10 I=1,N2
        IF(STR_DATA%LC1(I)) THEN
          STR_DATA%LS1 = STR_DATA%RA1(I).GT.STR_DATA%RB1(I)
          STR_DATA%DS2 = DMAX1(STR_DATA%DS2,ABS(STR_DATA%DC1(K)))
          STR_DATA%CA1(I) = STR_DATA%CB1(K) - STR_DATA%CC1(K)
          K = K + 2
          IF(STR_DATA%LC1(I).OR.STR_DATA%LS1) THEN
            STR_DATA%RS1 = STR_DATA%RS1 + STR_DATA%RB1(I)
            J = J + 1
            STR_DATA%DA1(J) = STR_DATA%DB1(I) * STR_DATA%DC1(I)
            STR_DATA%DS1 = STR_DATA%DS1 + STR_DATA%DB1(J)
            IF(STR_DATA%RS2.GT.STR_DATA%RA1(I)) THEN
              STR_DATA%RS2 = STR_DATA%RA1(I)
              STR_DATA%IS2 = I
            ENDIF
            L = L + 1
            STR_DATA%LS2 = STR_DATA%DB1(L).NE.STR_DATA%DC1(I)
            STR_DATA%LA1(I) = STR_DATA%LS2
          ENDIF
        ENDIF
  10  CONTINUE
      WRITE(6,*) ' DS2 = ',STR_DATA%DS2
      WRITE(6,*) ' CA1 = ',STR_DATA%CA1
      WRITE(6,*) ' K   = ',K
      WRITE(6,*) ' RS1 = ',STR_DATA%RS1
      WRITE(6,*) ' J   = ',J
      WRITE(6,*) ' DA1 = ',STR_DATA%DA1
      WRITE(6,*) ' DS1 = ',STR_DATA%DS1
      WRITE(6,*) ' RS2 = ',STR_DATA%RS2
      WRITE(6,*) ' IS2 = ',STR_DATA%IS2
      WRITE(6,*) ' L   = ',L
      WRITE(6,*) ' LA1 = ',STR_DATA%LA1

      STOP
      END
