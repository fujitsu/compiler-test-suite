      CALL M1
      CALL M2
      CALL M3
      CALL M4
      CALL M5
      CALL M14
      PRINT *,'PASS'
      END
      SUBROUTINE M1
      CHARACTER*(*) ZA,ZB,ZC,ZD,ZE,ZF,ZG,ZH,ZI,ZJ,ZK,
     1              ZL,ZM,ZN,ZO,ZP,ZQ,ZR,ZS,ZT,ZU,ZV,
     2              ZW,ZX,ZY,ZZ,EMPTY
      INTEGER       R1(100),R2(100)
      PARAMETER (
     1 ZA='A',ZB='B',ZC='C',ZD='D',ZE='E',
     1 ZF='F',ZG='G',ZH='H',ZI='I',ZJ='J',
     1 ZK='K',ZL='L',ZM='M',ZN='N',ZO='O',
     1 ZP='P',ZQ='Q',ZR='R',ZS='S',ZT='T',
     1 ZU='U',ZV='V',ZW='W',ZX='X',ZY='Y',
     1 ZZ='Z',EMPTY='')
      DO 101 I1=ICHAR(ZA)-1,ICHAR(ZZ)+1
      CALL S01(CHAR(I1),EMPTY,R1,ICHAR(ZZ)-ICHAR(ZA)+3,I1-ICHAR(ZA)+2)
      CALL S02(CHAR(I1),EMPTY,R2,ICHAR(ZZ)-ICHAR(ZA)+3,I1-ICHAR(ZA)+2)
 101  CONTINUE
      DO 102 I1=ICHAR(ZA)-1,ICHAR(ZZ)+1
       IN=0
       SELECT CASE(I1)
         CASE (ichar('A'))
           IN=1
         CASE (ichar('J'))
           IN=10
         CASE (ichar('X'))
           IN=100
         END SELECT

       PRINT *,'1 ',IN,R1(I1-ICHAR(ZA)+2)
       IF (R1(I1-ICHAR(ZA)+2).NE.IN) THEN
          PRINT *,'FAIL'
       ENDIF
       IF (R2(I1-ICHAR(ZA)+2).NE.IN) THEN
          PRINT *,'2',IN,R2(I1-ICHAR(ZA)+2)
          PRINT *,'FAIL'
       ENDIF
 102  CONTINUE
      END
      SUBROUTINE M2
      CHARACTER*(*) ZA,ZB,ZC,ZD,ZE,ZF,ZG,ZH,ZI,ZJ,ZK,
     1              ZL,ZM,ZN,ZO,ZP,ZQ,ZR,ZS,ZT,ZU,ZV,
     2              ZW,ZX,ZY,ZZ,EMPTY
      INTEGER       R1(100),R2(100)
      PARAMETER (
     1 ZA='A',ZB='B',ZC='C',ZD='D',ZE='E',
     1 ZF='F',ZG='G',ZH='H',ZI='I',ZJ='J',
     1 ZK='K',ZL='L',ZM='M',ZN='N',ZO='O',
     1 ZP='P',ZQ='Q',ZR='R',ZS='S',ZT='T',
     1 ZU='U',ZV='V',ZW='W',ZX='X',ZY='Y',
     1 ZZ='Z',EMPTY='')
      PARAMETER (LA=Z'C1',LJ=Z'D1',LK=Z'D2',LW=Z'E6',LX=Z'E7',LZ=Z'E9')
      DO 101 I1=ICHAR(ZA)-1,ICHAR(ZZ)+1
      DO 103 I3=ICHAR(ZA)-1,ICHAR(ZZ)+1
      CALL S11(CHAR(I1),CHAR(I3),
     1         R1,ICHAR(ZZ)-ICHAR(ZA)+3,I3-ICHAR(ZA)+2)
      CALL S12(CHAR(I1),CHAR(I3),
     1         R2,ICHAR(ZZ)-ICHAR(ZA)+3,I3-ICHAR(ZA)+2)
 103  CONTINUE
      IN=0
      DO 102 IX=ICHAR(ZA)-1,ICHAR(ZZ)+1
       SELECT CASE(I1)
         CASE (LA:LJ)
           IN=1
         CASE (LK:LW)
           IN=10
         CASE (LX:LZ)
           IN=100
       END SELECT
       IF (R1(IX-ICHAR(ZA)+2).NE.IN)THEN
       END IF
       IF (R2(IX-ICHAR(ZA)+2).NE.IN)THEN
       END IF
        R1(IX-ICHAR(ZA)+2)=-1
        R2(IX-ICHAR(ZA)+2)=-1
 102  CONTINUE
 101  CONTINUE
      END
      SUBROUTINE M3
      CHARACTER*(*) ZA,ZB,ZC,ZD,ZE,ZF,ZG,ZH,ZI,ZJ,ZK,
     1              ZL,ZM,ZN,ZO,ZP,ZQ,ZR,ZS,ZT,ZU,ZV,
     2              ZW,ZX,ZY,ZZ,EMPTY
      INTEGER       R(100)
      PARAMETER (
     1 ZA='A',ZB='B',ZC='C',ZD='D',ZE='E',
     1 ZF='F',ZG='G',ZH='H',ZI='I',ZJ='J',
     1 ZK='K',ZL='L',ZM='M',ZN='N',ZO='O',
     1 ZP='P',ZQ='Q',ZR='R',ZS='S',ZT='T',
     1 ZU='U',ZV='V',ZW='W',ZX='X',ZY='Y',
     1 ZZ='Z',EMPTY='')
      II=1
      DO 101 I1=ICHAR(ZA)-1,ICHAR(ZZ)
      CALL S30(CHAR(I1),R,100,II)
  101 IN=0
      DO 102 II=0,26
       SELECT CASE(II)
         CASE (0)
         CASE DEFAULT
           IF (R(II).NE.II)THEN
                           PRINT *,'FAIL'
                           PRINT *,R(II),II
           END IF
       END SELECT
  102 CONTINUE
      END
      SUBROUTINE M4
      INTEGER       R1(0:400)
      II=1
      DO 101 I1=0,340
      CALL S40(I1      ,R1,400,I1)
      SELECT CASE(I1)
        CASE(:-1,270:)
         JM=0
        CASE DEFAULT
          SELECT CASE (MOD(I1,10))
            CASE (0)
                 JM= I1/10
            CASE DEFAULT
                 JM=0
          END SELECT
      END SELECT
      IF (R1(I1).NE.JM) THEN
         PRINT *,'FAIL'
         PRINT *,I1,JM,R1(I1)
      ENDIF
  101 CONTINUE
      END
      SUBROUTINE M5
      INTEGER       R1(0:400)
      II=1
      DO 101 I1=0,340
      CALL S40(I1      ,R1,400,I1)
      SELECT CASE(I1)
        CASE(:-1,270:)
         JM=0
        CASE DEFAULT
          JM=0
          SELECT CASE(MOD(I1,10))
            CASE(0)
              JM= I1/10
          END SELECT
      END SELECT
      IF (R1(I1).NE.JM) THEN
         PRINT *,'FAIL'
         PRINT *,I1,JM,R1(I1)
      ENDIF
  101 CONTINUE
      END
      SUBROUTINE M14
      INTEGER       R1(0:400)
      II=1
      DO 101 I1=0,340
      CALL S50(I1      ,R1,400,I1)
      SELECT CASE (R1(I1))
       CASE (:0)
         SELECT CASE(R1(I1))
           CASE (-1)
             JM=R1(I1)
           CASE DEFAULT
              PRINT *,'FAIL'
         END SELECT
       CASE (1:)
         SELECT CASE(I1)
           CASE(:-1,270:)
            PRINT *,'FAIL'
           CASE DEFAULT
             SELECT CASE (MOD(I1,10))
               CASE (0)
                 JM= I1/10
               CASE DEFAULT
                 PRINT *,'FAIL'
             END SELECT
         END SELECT
      END SELECT
      IF (R1(I1).NE.JM) THEN
         PRINT *,'FAIL'
         PRINT *,I1,JM,R1(I1)
      ENDIF
  101 CONTINUE
      END
      SUBROUTINE S01(C1,C2,R,N,NN)
      CHARACTER*(*) ZA,ZB,ZC,ZD,ZE,ZF,ZG,ZH,ZI,ZJ,ZK,
     1              ZL,ZM,ZN,ZO,ZP,ZQ,ZR,ZS,ZT,ZU,ZV,
     2              ZW,ZX,ZY,ZZ
      INTEGER       R(N)
      PARAMETER (
     1 ZA='A',ZB='B',ZC='C',ZD='D',ZE='E',
     1 ZF='F',ZG='G',ZH='H',ZI='I',ZJ='J',
     1 ZK='K',ZL='L',ZM='M',ZN='N',ZO='O',
     1 ZP='P',ZQ='Q',ZR='R',ZS='S',ZT='T',
     1 ZU='U',ZV='V',ZW='W',ZX='X',ZY='Y',
     1 ZZ='Z')
      CHARACTER*(*) C1,C2
      I=0
      SELECT CASE(C1    )
        CASE (ZA)
           I=1
        CASE (ZJ)
           I=10
        CASE (ZX)
           I=100
      END SELECT
      R(NN)=I
      END
      SUBROUTINE S02(C1,C2,R,N,NN)
      CHARACTER*(*) ZA,ZB,ZC,ZD,ZE,ZF,ZG,ZH,ZI,ZJ,ZK,
     1              ZL,ZM,ZN,ZO,ZP,ZQ,ZR,ZS,ZT,ZU,ZV,
     2              ZW,ZX,ZY,ZZ
      INTEGER       R(N)
      PARAMETER (
     1 ZA='A',ZB='B',ZC='C',ZD='D',ZE='E',
     1 ZF='F',ZG='G',ZH='H',ZI='I',ZJ='J',
     1 ZK='K',ZL='L',ZM='M',ZN='N',ZO='O',
     1 ZP='P',ZQ='Q',ZR='R',ZS='S',ZT='T',
     1 ZU='U',ZV='V',ZW='W',ZX='X',ZY='Y',
     1 ZZ='Z')
      CHARACTER*(*) C1,C2
      I=0
      SELECT CASE(C1//C2)
        CASE (ZA)
           I=1
        CASE (ZJ)
           I=10
        CASE (ZX)
           I=100
      END SELECT
      R(NN)=I
      END
      SUBROUTINE S11(C1,C2,R,N,NN)
      CHARACTER*(*) ZA,ZB,ZC,ZD,ZE,ZF,ZG,ZH,ZI,ZJ,ZK,
     1              ZL,ZM,ZN,ZO,ZP,ZQ,ZR,ZS,ZT,ZU,ZV,
     2              ZW,ZX,ZY,ZZ
      INTEGER       R(N)
      PARAMETER (
     1 ZA='A',ZB='B',ZC='C',ZD='D',ZE='E',
     1 ZF='F',ZG='G',ZH='H',ZI='I',ZJ='J',
     1 ZK='K',ZL='L',ZM='M',ZN='N',ZO='O',
     1 ZP='P',ZQ='Q',ZR='R',ZS='S',ZT='T',
     1 ZU='U',ZV='V',ZW='W',ZX='X',ZY='Y',
     1 ZZ='Z')
      CHARACTER*(*) C1,C2
      I=0
      SELECT CASE(C1    )
        CASE (ZA:'JZZ')
           I=1
        CASE (ZK:'WZZ')
           I=10
        CASE (ZX:'ZZZ')
           I=100
      END SELECT
      R(NN)=I
      END
      SUBROUTINE S12(C1,C2,R,N,NN)
      CHARACTER*(*) ZA,ZB,ZC,ZD,ZE,ZF,ZG,ZH,ZI,ZJ,ZK,
     1              ZL,ZM,ZN,ZO,ZP,ZQ,ZR,ZS,ZT,ZU,ZV,
     2              ZW,ZX,ZY,ZZ
      INTEGER       R(N)
      PARAMETER (
     1 ZA='A',ZB='B',ZC='C',ZD='D',ZE='E',
     1 ZF='F',ZG='G',ZH='H',ZI='I',ZJ='J',
     1 ZK='K',ZL='L',ZM='M',ZN='N',ZO='O',
     1 ZP='P',ZQ='Q',ZR='R',ZS='S',ZT='T',
     1 ZU='U',ZV='V',ZW='W',ZX='X',ZY='Y',
     1 ZZ='Z')
      CHARACTER*(*) C1,C2
      I=0
      SELECT CASE(C1//C2)
        CASE (ZA:'JZZ')
           I=1
        CASE (ZK:'WZZ')
           I=10
        CASE (ZX:'ZZZ')
           I=100
        CASE DEFAULT
           SELECT CASE(C1)
             CASE ('J')
               SELECT CASE(C2)
                 CASE ('Z':)
                   I=1
                 CASE DEFAULT
               END SELECT
             CASE ('W')
               SELECT CASE(C2)
                 CASE ('Z':)
                   I=10
                 CASE DEFAULT
               END SELECT
             CASE ('Z')
               SELECT CASE(C2)
                 CASE ('Z':)
                   I=100
                 CASE DEFAULT
               END SELECT
           END SELECT
      END SELECT
      R(NN)=I
      END
      SUBROUTINE S30(C,R,N,NN)
      CHARACTER*(*) ZA,ZB,ZC,ZD,ZE,ZF,ZG,ZH,ZI,ZJ,ZK,
     1              ZL,ZM,ZN,ZO,ZP,ZQ,ZR,ZS,ZT,ZU,ZV,
     2              ZW,ZX,ZY,ZZ
      INTEGER       R(N)
      PARAMETER (
     1 ZA='A',ZB='B',ZC='C',ZD='D',ZE='E',
     1 ZF='F',ZG='G',ZH='H',ZI='I',ZJ='J',
     1 ZK='K',ZL='L',ZM='M',ZN='N',ZO='O',
     1 ZP='P',ZQ='Q',ZR='R',ZS='S',ZT='T',
     1 ZU='U',ZV='V',ZW='W',ZX='X',ZY='Y',
     1 ZZ='Z')
      CHARACTER*(*) C
      I=0
      SELECT CASE(C)
        CASE (ZZ)
           I=26
        CASE (ZA)
           I=1
        CASE (ZC)
           I=3
        CASE (ZF)
           I=6
        CASE (ZD)
           I=4
        CASE (ZG)
           I=7
        CASE (ZH)
           I=8
        CASE (ZB)
           I=2
        CASE (ZJ)
           I=10
        CASE (ZI)
           I=9
        CASE (ZX)
           I=24
        CASE (ZE)
           I=5
        CASE (ZL)
           I=12
        CASE (ZM)
           I=13
        CASE (ZN)
           I=14
        CASE (ZP)
           I=16
        CASE (ZR)
           I=18
        CASE (ZQ)
           I=17
        CASE (ZO)
           I=15
        CASE (ZK)
           I=11
        CASE (ZW)
           I=23
        CASE (ZY)
           I=25
        CASE (ZV)
           I=22
        CASE (ZU)
           I=21
        CASE (ZT)
           I=20
        CASE (ZS)
           I=19
      END SELECT
      IF (I.NE.0)R(NN)=I
      IF (I.NE.0)NN=NN+1
      END
      SUBROUTINE S40(M,R,N,NN)
      INTEGER       R(0:N)
      I=0
      SELECT CASE(M)
        CASE (260)
           I=26
        CASE (10)
           I=1
        CASE (30)
           I=3
        CASE (60)
           I=6
        CASE (40)
           I=4
        CASE (70)
           I=7
        CASE (80)
           I=8
        CASE (20)
           I=2
        CASE (100)
           I=10
        CASE (90)
           I=9
        CASE (240)
           I=24
        CASE (50)
           I=5
        CASE (120)
           I=12
        CASE (130)
           I=13
        CASE (140)
           I=14
        CASE (160)
           I=16
        CASE (180)
           I=18
        CASE (170)
           I=17
        CASE (150)
           I=15
        CASE (110)
           I=11
        CASE (230)
           I=23
        CASE (250)
           I=25
        CASE (220)
           I=22
        CASE (210)
           I=21
        CASE (200)
           I=20
        CASE (190)
           I=19
      END SELECT
      R(NN)=I
      END
      SUBROUTINE S50(M,R,N,NN)
      INTEGER       R(0:N)
      I=260
      SELECT CASE(M)
        CASE (10)
           I=1
        CASE (30)
           I=3
        CASE (60)
           I=6
        CASE (40)
           I=4
        CASE (70)
           I=7
        CASE (80)
           I=8
        CASE DEFAULT
           I=-1
        CASE (20)
           I=2
        CASE (100)
           I=10
        CASE (90)
           I=9
        CASE (240)
           I=24
        CASE (50)
           I=5
        CASE (120)
           I=12
        CASE (130)
           I=13
        CASE (140)
           I=14
        CASE (160)
           I=16
        CASE (180)
           I=18
        CASE (170)
           I=17
        CASE (150)
           I=15
        CASE (110)
           I=11
        CASE (230)
           I=23
        CASE (250)
           I=25
        CASE (220)
           I=22
        CASE (210)
           I=21
        CASE (200)
           I=20
        CASE (190)
           I=19
      END SELECT
      R(NN)=I
      END
