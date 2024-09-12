      PROGRAM MAIN
      DATA      N1/10/,N2/10/,N3/10/

      INTEGER*4   IA1(10),IB1(10),IC1(10),IS1
      INTEGER*2   IHA1(10),IHB1(10),IHC1(10),IHS1
      LOGICAL*4   LA1(10),LB1(10),LC1(10),LS1
      LOGICAL*1   LBA1(10),LBB1(10),LBC1(10),LBS1
      REAL        RA1(10),RB1(10),RC1(10),RS1
      REAL*8      DA1(10),DB1(10),DC1(10),DS1
      REAL*8      QA1(10),QB1(10),QC1(10),QS1
      COMPLEX*8   CA1(10),CB1(10),CC1(10),CS1
      COMPLEX*16  CDA1(10),CDB1(10),CDC1(10),CDS1
      COMPLEX*16  CQA1(10),CQB1(10),CQC1(10),CQS1

      INTEGER*4   IA2(10,10),IB2(10,10),IC2(10,10)
      INTEGER*2   IHA2(10,10),IHB2(10,10),IHC2(10,10)
      LOGICAL*4   LA2(10,10),LB2(10,10),LC2(10,10)
      LOGICAL*1   LBA2(10,10),LBB2(10,10),LBC2(10,10)
      REAL        RA2(10,10),RB2(10,10),RC2(10,10)
      REAL*8      DA2(10,10),DB2(10,10),DC2(10,10)
      REAL*8      QA2(10,10),QB2(10,10),QC2(10,10)
      COMPLEX*8   CA2(10,10),CB2(10,10),CC2(10,10)
      COMPLEX*16  CDA2(10,10),CDB2(10,10),CDC2(10,10)
      COMPLEX*16  CQA2(10,10),CQB2(10,10),CQC2(10,10)

      DS1 = 0
      J = 3
      DO 1 I=1,N2
        IA1(I) = 0
        IB1(I) = I+J
        IC1(I) = I-J
        RA1(I) = 0
        RB1(I) = I+J
        RC1(I) = I-J
        DA1(I) = 0
        DB1(I) = I+J
        DC1(I) = I-J
        QA1(I) = 0
        QB1(I) = I+J
        QC1(I) = I-J
        IHA1(I) = 0
        IHB1(I) = I+J
        IHC1(I) = I-J
        LA1(I) = .FALSE.
        LB1(I) = .TRUE.
        LC1(I) = .FALSE.
        LBA1(I) = .FALSE.
        LBB1(I) = .TRUE.
        LBC1(I) = .FALSE.
        CA1(I) = 0
        CB1(I) = I-1
        CC1(I) = I+1
        CDA1(I) = 0
        CDB1(I) = I-1
        CDC1(I) = I+1
        CQA1(I) = 0
        CQB1(I) = I-1
        CQC1(I) = I+1
 1    CONTINUE
      DO 2 J=1,N1
        DO 2 I=1,N2
          IA2(I,J) = 0
          IB2(I,J) = I+J
          IC2(I,J) = I-J
          RA2(I,J) = 0
          RB2(I,J) = I+J
          RC2(I,J) = I-J
          DA2(I,J) = 0
          DB2(I,J) = I+J
          DC2(I,J) = I-J
          QA2(I,J) = 0
          QB2(I,J) = I+J
          QC2(I,J) = I-J
          IHA2(I,J) = 0
          IHB2(I,J) = I+J
          IHC2(I,J) = I-J
          LA2(I,J) = .FALSE.
          LB2(I,J) = .TRUE.
          LC2(I,J) = .FALSE.
          LBA2(I,J) = .FALSE.
          LBB2(I,J) = .TRUE.
          LBC2(I,J) = .FALSE.
          CA2(I,J) = 0
          CB2(I,J) = I-1
          CC2(I,J) = I+1
          CDA2(I,J) = 0
          CDB2(I,J) = I-1
          CDC2(I,J) = I+1
          CQA2(I,J) = 0
          CQB2(I,J) = I-1
          CQC2(I,J) = I+1
 2    CONTINUE
      WRITE(6,*) '----- TEST NO.1 -----'
        DO 10 J=1,10
          IA1(J) = J
          RA1(J) = FLOAT(IA1(J)) +RB1(J)
          DB1(5) = DB1(5) + DC1(J)
          DO 10 K=1,5
            IA2(J,K) = IB2(J,K) ** 3
            RA2(J,K) = SQRT(RB2(J,K))
            IF(LA2(J,K)) THEN
              LB2(J,K) = LC2(J,K).AND.(DA2(J,K).GT.DB2(J,K))
              IF(LB2(J,K)) CA2(J,K) = CDA2(J,K) + CDB2(J,K)
            ELSE
              DA2(J,K) = DSIN(DC2(J,K))
            ENDIF
   10   CONTINUE
      WRITE(6,999) 'IA1 = ',IA1
      WRITE(6,999) 'RA1 = ',RA1
      WRITE(6,999) 'DB1 = ',DB1
      WRITE(6,999) 'IA2 = ',IA2
      WRITE(6,999) 'RA2 = ',RA2
      WRITE(6,999) 'LB2 = ',LB2
      WRITE(6,999) 'CA2 = ',CA2
      WRITE(6,999) 'DA2 = ',DA2
      WRITE(6,*) '----- TEST NO.2 -----'
        DO 21 J=1,10
          DO 20 K=1,5
            IA2(J,K) = IB2(J,K) ** 3
            IF(LA2(5,5)) THEN
              LB2(J,K) = LC2(J,K).AND.(DA2(J,K).GT.DB2(J,K))
              IF(LB2(J,K)) CA2(J,K) = CDA2(J,K) + CDB2(J,K)
            ELSE
              DA2(J,K) = DSIN(DC2(J,K))
            ENDIF
            RA2(J,K) = SQRT(RB2(J,K))
   20     CONTINUE
          LA1(J) = .NOT.LB1(J)
          IA1(J) = J
          RA1(J) = FLOAT(IA1(J)) +RB1(J)
          DB1(5) = DB1(5) + DC1(J)
   21   CONTINUE
      WRITE(6,999) 'IA2 = ',IA2
      WRITE(6,999) 'RA2 = ',RA2
      WRITE(6,999) 'LB2 = ',LB2
      WRITE(6,999) 'CA2 = ',CA2
      WRITE(6,999) 'DA2 = ',DA2
      WRITE(6,999) 'LA1 = ',LA1
      WRITE(6,999) 'IA1 = ',IA1
      WRITE(6,999) 'RA1 = ',RA1
      WRITE(6,999) 'DB1 = ',DB1
      WRITE(6,*) '----- TEST NO.3 -----'
        DO 31 J=1,10
          CA1(J) = CB1(J)*CC1(J)
          CDA1(J) = CDB1(J)
          IF(LC1(J)) DS1 = DS1 + DA1(J)
          DO 30 K=1,5
            IA2(J,K) = IB2(J,K) ** 3
            IF(LB1(J))   THEN
              LB2(J,K) = .NOT.LC2(J,K)
            ELSE
              DA2(J,K) = DSIN(DC2(J,K))
              IF(LB2(J,K)) CDA2(J,K) = CDA2(J,K) / CDB2(J,K)
            ENDIF
            RA2(J,K) = SQRT(RB2(J,K))
   30     CONTINUE
          LA1(J) = .FALSE.
          IA1(J) = J
          RA1(J) = FLOAT(IA1(J)) +RB1(J)
          DB1(5) = DB1(5) + DC1(J)
   31   CONTINUE
      WRITE(6,999) 'CA1 = ',CA1
      WRITE(6,999) 'CDA1 =',CDA1
      WRITE(6,999) 'DS1 = ',DS1
      WRITE(6,999) 'IA2 = ',IA2
      WRITE(6,999) 'RA2 = ',RA2
      WRITE(6,999) 'LB2 = ',LB2
      WRITE(6,999) 'DA2 = ',DA2
      WRITE(6,999) 'CDA2 =',CDA2
      WRITE(6,999) 'RA2 = ',RA2
      WRITE(6,999) 'LA1 = ',LA1
      WRITE(6,999) 'IA1 = ',IA1
      WRITE(6,999) 'RA1 = ',RA1
      WRITE(6,999) 'DB1 = ',DB1
 999  format(a6,(10g20.6))
      STOP
      END













