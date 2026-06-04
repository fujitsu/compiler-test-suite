      PROGRAM CV4403
      DATA      N1/50/,N2/10/,N3/10/
      DATA  I1/0/,I2/1/,I3/1/,I4/0/,I5/0/,I6/0/,I7/0/,I8/0/,I9/0/
      DATA  I10/0/,I11/0/,I12/0/,I13/0/,I14/0/,I15/0/,I16/0/,I17/0/
      DATA  I18/0/
      type STR
         LOGICAL*1   MASK1(50)/50*.TRUE./,LBS1
         LOGICAL*4   MASK(50)/50*.TRUE./
         INTEGER*2   IHA(50),IHB(50),IHC(50),IHS1,IHS2
         INTEGER*4   IA(50),IB(50),IC(50),IS1,IS2
         LOGICAL*4   LA(50),LB(50),LC(50),LS1,LS2
         REAL        RA(50),RB(50),RC(50),RS1,RS2
         REAL*8      DA(50),DB(50),DC(50),DS1,DS2
         REAL*8      QA(50),QB(50),QC(50),QS1,QS2
         COMPLEX*8   CA(50),CB(50),CC(50),CS1,CS2
         COMPLEX*16  CDA(50),CDB(50),CDC(50),CDS1,CDS2
         COMPLEX*16  CQA(50),CQB(50),CQC(50),CQS1,CQS2
      END type STR
      TYPE(STR) STR_DATA

      DO 1 I=1,N1
        IF(STR_DATA%MASK1(I)) THEN
         I1 = I1 + 1
         STR_DATA%IA(I1) = I
         STR_DATA%IB(I2) = -I
         I2 = I2 + 1
         STR_DATA%IC(I3) = I + I
         I3 = I3 + 1
         I4 = I4 + 1
         STR_DATA%RA(I4) = 0
         I5 = I5 + 1
         STR_DATA%RB(I5) = I
         I6 = I6 + 1
         STR_DATA%RC(I6) = -I
         I7 = I7 + 1
         STR_DATA%LA(I7) = .TRUE.
         I8 = I8 + 1
         STR_DATA%LB(I8) = 0.EQ.MOD(I,2)
         I9 = I9 + 1
         STR_DATA%LC(I9) = .NOT.(0.EQ.MOD(I,2))
         I10 = I10 + 1
         STR_DATA%DA(I10) = 0
         I11 = I11 + 1
         STR_DATA%DB(I11) = I
         I12 = I12 + 1
         STR_DATA%DC(I12) = -I
         I13 = I13 + 1
         STR_DATA%QA(I) = 0.
         STR_DATA%QB(I13) = I
         STR_DATA%QC(I13) = -I
         STR_DATA%CA(I13) = 0
         I14 = I14 + 1
         STR_DATA%CB(I14) = I
         I15 = I15 + 1
         STR_DATA%CQA(I15) = 0.
         STR_DATA%CQB(I) = I
         STR_DATA%CQC(I15) = -I
         STR_DATA%CC(I15) = -I
         I16 = I16 + 1
         STR_DATA%CDA(I16) = 0
         I17 = I17 + 1
         STR_DATA%CDB(I17) = I
         I18 = I18 + 1
         STR_DATA%CDC(I18) = -I
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
        IF(STR_DATA%LC(I)) THEN
          STR_DATA%LS1 = STR_DATA%RA(I).GT.STR_DATA%RB(I)
          STR_DATA%DS2 = DMAX1(STR_DATA%DS2,ABS(STR_DATA%DC(K)))
          STR_DATA%QA(I) = STR_DATA%QB(I) + STR_DATA%QC(I)
          STR_DATA%CA(I) = STR_DATA%CB(K) - STR_DATA%CC(K)
          STR_DATA%CQA(I) = STR_DATA%CA(I) + STR_DATA%CB(K)
          K = K + 2
          IF(STR_DATA%LC(I).OR.STR_DATA%LS1) THEN
            STR_DATA%RS1 = STR_DATA%RS1 + STR_DATA%RB(I)
            J = J + 1
            STR_DATA%LBS1 = STR_DATA%DB(I) .EQ. STR_DATA%DC(I)
            STR_DATA%DC(I) = STR_DATA%DC(I) + 1.
            STR_DATA%DA(J) = STR_DATA%DB(I) * STR_DATA%DC(I)
            STR_DATA%DS1 = STR_DATA%DS1 + STR_DATA%DB(J)
            IF(STR_DATA%RS2.GT.STR_DATA%RA(I)) THEN
              STR_DATA%RS2 = STR_DATA%RA(I)
              STR_DATA%IS2 = I
            ENDIF
            STR_DATA%CQA(I) = STR_DATA%CQB(I) * STR_DATA%CQC(I)
            L = L + 1
            STR_DATA%LB(I) =STR_DATA% LBS1
            STR_DATA%LS2 = STR_DATA%DB(L).NE.STR_DATA%DC(I)
            STR_DATA%LA(I) = STR_DATA%LS2
          ENDIF
        ENDIF
  10  CONTINUE
      WRITE(6,*) ' DS2 = ',STR_DATA%DS2
      WRITE(6,*) ' CA = ',STR_DATA%CA
      WRITE(6,*) ' K   = ',K
      WRITE(6,*) ' RS1 = ',STR_DATA%RS1
      WRITE(6,*) ' J   = ',J
      WRITE(6,*) ' DA = ',STR_DATA%DA
      WRITE(6,*) ' DS1 = ',STR_DATA%DS1
      WRITE(6,*) ' RS2 = ',STR_DATA%RS2
      WRITE(6,*) ' IS2 = ',STR_DATA%IS2
      WRITE(6,*) ' L   = ',L
      WRITE(6,*) ' LA = ',STR_DATA%LA

      STOP
      END
