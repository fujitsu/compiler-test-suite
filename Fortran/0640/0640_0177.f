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
      RS1 = 0
      IS1 = 0
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
      WRITE(6,9999) '----- TEST NO.1 -----'
      DO 10 I=1,10
        IA1(I) = I
        DA1(I) = DFLOAT(IA1(I))
        IF(LA1(I)) DA1(I) = DB1(I)*DC1(I)
        DO 10 J=1,10
          CA2(I,J) = IA1(I) + DA1(I)
          DB2(I,J) = DB2(I,J) * 2.0 + DA1(I)
          RA2(I,J) = 0.0
          LC2(I,J) = DB2(I,J).GT.DC2(I,J)
          DO 10 K=1,2
            DA2(I,J) = DB2(I,J) + DC2(I,J)
            RA2(I,J) = SQRT(RB2(I,J))
            IF(LA2(I,J)) LB2(I,J) = .NOT.LC2(I,J)
   10   CONTINUE
      WRITE(6,9999) 'IA1 = ',IA1
      WRITE(6,9999) 'DA1 = ',DA1
      WRITE(6,9999) 'CA2 = ',CA2
      WRITE(6,9999) 'DB2 = ',DB2
      WRITE(6,9999) 'RA2 = ',RA2
      WRITE(6,9999) 'LC2 = ',LC2
      WRITE(6,9999) 'DA2 = ',DA2
      WRITE(6,9999) 'LB2 = ',LB2
      WRITE(6,9999) '----- TEST NO.2 -----'
      DO 20 I=1,10
        DO 21 J=1,10
          DO 22 K=1,2
            DA2(I,J) = DB2(I,J) + DC2(I,J)
            RA2(I,J) = SQRT(RB2(I,J))
            IF(LA2(I,J)) LB2(I,J) = .NOT.LC2(I,J)
   22     CONTINUE
          CA2(I,J) = IA1(I) + DA1(I)
          DB2(I,J) = DA2(I,J) * 2.0 + DA1(I)
          RA2(I,J) = - RC2(I,J)
          LC2(I,J) = DB2(I,J).EQ.DC2(I,J)
   21   CONTINUE
        IF(LA1(I)) DA1(I) = DB1(I)*DC1(I)
        IA1(I) = - I
        DA1(I) = DFLOAT(IA1(I))
   20   CONTINUE
      WRITE(6,9999) 'IA1 = ',IA1
      WRITE(6,9999) 'DA1 = ',DA1
      WRITE(6,9999) 'CA2 = ',CA2
      WRITE(6,9999) 'DB2 = ',DB2
      WRITE(6,9999) 'RA2 = ',RA2
      WRITE(6,9999) 'LC2 = ',LC2
      WRITE(6,9999) 'DA2 = ',DA2
      WRITE(6,9999) 'LB2 = ',LB2
      WRITE(6,9999) '----- TEST NO.3 -----'
      DO 30 I=1,10
        DA1(I) =DFLOAT(I)
        DS1 = DS1 + DA1(I)
        RS1 = AMAX1(RS1,RA1(I))
        DO 31 J=1,10
          DA2(I,J) = RA2(I,J) + I
          RB2(I,J) = RC2(I,J)*3.0
          IB1(I) = IA1(I) + IC1(J)
          IS1 = IS1 + IB1(I)
          DO 32 K=1,2
            DA2(I,J) = DB2(I,J) + DC2(I,J)
            RA2(I,J) = SQRT(ABS(RB2(I,J)))
            IF(LA2(I,J)) LB2(I,J) = .NOT.LC2(I,J)
   32     CONTINUE
          CA2(I,J) = IA1(I) + DA1(I)
          DB2(I,J) = DA2(I,J) * 2.0 + DA1(I)
          RA2(I,J) = - RC2(I,J)
          LC2(I,J) = DB2(I,J).EQ.DC2(I,J)
   31   CONTINUE
        IF(LA1(I)) DA1(I) = DB1(I)*DC1(I)
        IA1(I) = - I
        DA1(I) = DFLOAT(IA1(I))
   30   CONTINUE
      WRITE(6,9999) 'IS1 = ',IS1
      WRITE(6,9999) 'RS1 = ',RS1
      WRITE(6,9999) 'DS1 = ',DS1
      WRITE(6,9999) 'IA1 = ',IA1
      WRITE(6,9999) 'DA1 = ',DA1
      WRITE(6,9999) 'CA2 = ',CA2
      WRITE(6,9999) 'DB2 = ',DB2
      WRITE(6,9999) 'RA2 = ',RA2
      WRITE(6,9999) 'LC2 = ',LC2
      WRITE(6,9999) 'DA2 = ',DA2
      WRITE(6,9999) 'LB2 = ',LB2
9999  format(a,(g20.6))
      STOP
      END




















