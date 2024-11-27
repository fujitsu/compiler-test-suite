        print *,'pass'
        end
        SUBROUTINE IUEMN2
      DIMENSION O(2),DTX(2)
      CHARACTER*4 TXTS4(4)
      REAL*4    WHDXY(55) ,DATA1(56) ,DATA2(7) ,DATA3(55),DATA4(60),
     &          WHDXYN(55),DATA1N(11),DATA2N(3),DATA3N(11),DATA4N(10)
      CHARACTER*4  WTXT1(2,4)/'DISP','CASE','LY (','.N (','  1)','  2)',
     &                      '=   ','=   '/
      CHARACTER*4 WTXT2(18,4)/'W1  ','W2  ','W3  ','W4  ','W5  ','W6  ',
     &        'W7  ','W8  ','W9  ','W10 ','W11 ','W12 ','W13 ','W14 ',
     &        'W15 ','D   ','H   ','LSIZ','   (','   (','   (','   (',
     &        '   (','   (','   (','   (','   (','   (','   (','   (',
     &        '   (','   (','   (','   (','   (','E  (','  3)','  4)',
     &        '  5)','  6)','  7)','  8)','  9)',' 10)',' 11)',' 12)',
     &        ' 13)',' 14)',' 65)',' 66)',' 67)',' 15)',' 16)',' 17)',
     &        '=   ','=   ','=   ','=   ','=   ','=   ','=   ','=   ',
     &        '=   ','=   ','=   ','=   ','=   ','=   ','=   ','=   ',
     &        '=   ','=   '/
      CHARACTER*4  WTXT3(4,4)/'CHTY','CHDI','CHDI','CHDI','PE (','V1 (',
     &                      'V2 (','V3 (',' 18)',' 19)',' 20)',' 68)',
     &                      '=   ','=   ','=   ','=   '/
      CHARACTER*4  WTXT4(2,4)/'T   ','DD  ','   (','   (',' 21)',' 22)',
     &                      '=   ','=   '/
      CHARACTER*4  WTXT5(4,4)/'COVP','COVP','COVP','COVM','O1 (','O2 (',
     &                      'O3 (','E  (',' 23)',' 24)',' 69)',' 25)',
     &                      '=   ','=   ','=   ','=   '/
      CHARACTER*4 DTXT1(15,4)/'FF.S','FDIV','FDIV','FDIV','FHND','FHND',
     &        'FHND','FHND','FHND','FHND','NPTY','NPTY','NPTY','TP.P',
     &        'ZUM ','.H (','H1 (','H2 (','H3 (','U1 (','U2 (','U3 (',
     &        'D1 (','D2 (','D3 (','P1 (','P2 (','P3 (','OS (','   (',
     &        ' 26)',' 27)',' 28)',' 70)',' 29)',' 30)',' 71)',' 31)',
     &        ' 32)',' 72)',' 33)',' 34)',' 73)',' 35)',' 36)','=  ',
     &        '=   ','=   ','=   ','=   ','=   ','=   ','=   ','=   ',
     &        '=   ','=   ','=   ','=   ','=   ','=   '/
      CHARACTER*4  DTXT2(3,4)/'RF.S','RDIH','RH.N','.H (','.W (','ET (',
     &                      ' 37)',' 38)',' 39)','=   ','=   ','=   '/
      CHARACTER*4 DTXT3(15,4)/'BF.S','BDIV','BDIV','BDIV','BN.D','BN.D',
     &        'BDIV','BDIV','BDIV','BHND','BHND','BHND','BNET','BNET',
     &        'BNET','.H (','H1 (','H2 (','H3 (','H1 (','H2 (','W1 (',
     &        'W2 (','W3 (','1  (','2  (','3  (','1  (','2  (','3  (',
     &        ' 40)',' 41)',' 42)',' 74)',' 43)',' 44)',' 45)',' 46)',
     &        ' 75)',' 47)',' 48)',' 76)',' 49)',' 50)',' 77)','=   ',
     &        '=   ','=   ','=   ','=   ','=   ','=   ','=   ','=   ',
     &        '=   ','=   ','=   ','=   ','=   ','=   '/
      CHARACTER*4 DTXT4(15,4)/'TDIV','TDIV','TDIV','TDIV','TDIV','TDIV',
     &        'MTYP','MTYP','MTYP','NETF','NETF','NETF','FBPO','FBPO',
     &        'FBPO','W1 (','W2 (','W3 (','H1 (','H2 (','H3 (','E1 (',
     &        'E2 (','E3 (','B1 (','B2 (','B3 (','S1 (','S2 (','S3 (',
     &        ' 51)',' 52)',' 78)',' 53)',' 54)',' 79)',' 55)',' 56)',
     &        ' 80)',' 57)',' 58)',' 81)',' 59)',' 60)',' 82)','=   ',
     &        '=   ','=   ','=   ','=   ','=   ','=   ','=   ','=   ',
     &        '=   ','=   ','=   ','=   ','=   ','=   '/
      CHARACTER*4    WTXT6(4)/'SCAL','E  (',' 61)','=   '/
      INTEGER*4  KOSUW1(2)/1,3/,
     &           KOSUW4(2)/6,1/,
     &           KOSUD2(3)/3,2,2/,
     &           KOSUW3(4),KOSUW5(4),KOSUD1(15),KOSUD3(15),KOSUD4(15)
      DO 5 I=1,26
       WHDXYN(I)=0.0
    5 CONTINUE
      DO 10 I=1,11
       DATA1N(I)=0.0
   10 CONTINUE
      DO 15 I=1,3
       DATA2N(I)=0.0
   15 CONTINUE
      DO 20 I=1,11
       DATA3N(I)=0.0
   20 CONTINUE
      DO 25 I=1,10
       DATA4N(I)=0.0
   25 CONTINUE
      WHDXYN(1)=WHDXY(1)
      WHDXYN(2)=WHDXY(2)*100.0+WHDXY(3)
      NN=WHDXY(3)
      N=NN
      IF (N .GT. 6) N=6
      M=0
      IF (NN .GT. 6) M=NN-6
      DO 50 I=1,12
       WHDXYN(I+2)=WHDXY(I+3)
   50 CONTINUE
      WHDXYN(15)=WHDXY(16)
      WHDXYN(16)=WHDXY(17)
      WHDXYN(17)=WHDXY(18)
      WHDXYN(18)=WHDXY(19)
      WHDXYN(19)=WHDXY(20)
      WHDXYN(20)=WHDXY(21)
          CALL IN(WHDXY(22),WHDXY(23),WHDXY(24),WHDXY(25),WHDXY(26),
     &            WHDXY(27),6,XINOUT)
      WHDXYN(21)=XINOUT
      WHDXYN(22)=WHDXY(28)
          CALL IN(WHDXY(29),WHDXY(30),WHDXY(31),WHDXY(32),WHDXY(33),
     &            WHDXY(34),N,XINOUT)
      WHDXYN(23)=XINOUT
          CALL IN(WHDXY(35),WHDXY(36),WHDXY(37),WHDXY(38),WHDXY(39),
     &            WHDXY(40),M,XINOUT)
      WHDXYN(24)=XINOUT
      WHDXYN(25)=WHDXY(41)
      WHDXYN(26)=WHDXY(42)
          CALL IN(DATA1(1),DATA1(2),DATA1(3),DATA1(4),DATA1(5),0.0,5,
     &            XINOUT)
      DATA1N(1)=XINOUT
          CALL IN(DATA1(6),DATA1(7),DATA1(8),DATA1(9),DATA1(10),
     &            DATA1(11),N,XINOUT)
      DATA1N(2)=XINOUT
          CALL IN(DATA1(12),DATA1(13),DATA1(14),DATA1(15),DATA1(16),
     &            DATA1(17),M,XINOUT)
      DATA1N(3)=XINOUT
          CALL IN(DATA1(18),DATA1(19),DATA1(20),DATA1(21),DATA1(22),
     &            DATA1(23),N,XINOUT)
      DATA1N(4)=XINOUT
          CALL IN(DATA1(24),DATA1(25),DATA1(26),DATA1(27),DATA1(28),
     &            DATA1(29),M,XINOUT)
      DATA1N(5)=XINOUT
          CALL IN(DATA1(30),DATA1(31),DATA1(32),DATA1(33),DATA1(34),
     &            DATA1(35),N,XINOUT)
      DATA1N(6)=XINOUT
          CALL IN(DATA1(36),DATA1(37),DATA1(38),DATA1(39),DATA1(40),
     &            DATA1(41),M,XINOUT)
      DATA1N(7)=XINOUT
          CALL IN(DATA1(42),DATA1(43),DATA1(44),DATA1(45),DATA1(46),
     &            DATA1(47),N,XINOUT)
      DATA1N(8)=XINOUT
          CALL IN(DATA1(48),DATA1(49),DATA1(50),DATA1(51),DATA1(52),
     &            DATA1(53),M,XINOUT)
      DATA1N(9)=XINOUT
      DATA1N(10)=DATA1(54)*100.0+DATA1(55)
      DATA1N(11)=DATA1(56)
          CALL IN(DATA2(1),DATA2(2),DATA2(3),0.0,0.0,0.0,3,XINOUT)
      DATA2N(1)=XINOUT
          CALL IN(DATA2(4),DATA2(5),0.0,0.0,0.0,0.0,2,XINOUT)
      DATA2N(2)=XINOUT
          CALL IN(DATA2(6),DATA2(7),0.0,0.0,0.0,0.0,2,XINOUT)
      DATA2N(3)=XINOUT
          CALL IN(DATA3(1),DATA3(2),DATA3(3),DATA3(4),DATA3(5),0.0,5,
     &            XINOUT)
      DATA3N(1)=XINOUT
          CALL IN(DATA3(6),DATA3(7),DATA3(8),DATA3(9),DATA3(10),
     &            DATA3(11),N,XINOUT)
      DATA3N(2)=XINOUT
          CALL IN(DATA3(12),DATA3(13),DATA3(14),DATA3(15),DATA3(16),
     &            DATA3(17),M,XINOUT)
      DATA3N(3)=XINOUT
      DATA3N(4)=DATA3(18)
      DATA3N(5)=DATA3(19)
          CALL IN(DATA3(20),DATA3(21),DATA3(22),DATA3(23),DATA3(24),
     &            DATA3(25),N,XINOUT)
      DATA3N(6)=XINOUT
          CALL IN(DATA3(26),DATA3(27),DATA3(28),DATA3(29),DATA3(30),
     &            DATA3(31),M,XINOUT)
      DATA3N(7)=XINOUT
          CALL IN(DATA3(32),DATA3(33),DATA3(34),DATA3(35),DATA3(36),
     &            DATA3(37),N,XINOUT)
      DATA3N(8)=XINOUT
          CALL IN(DATA3(38),DATA3(39),DATA3(40),DATA3(41),DATA3(42),
     &            DATA3(43),M,XINOUT)
      DATA3N(9)=XINOUT
          CALL IN(DATA3(44),DATA3(45),DATA3(46),DATA3(47),DATA3(48),
     &            DATA3(49),N,XINOUT)
      DATA3N(10)=XINOUT
          CALL IN(DATA3(50),DATA3(51),DATA3(52),DATA3(53),DATA3(54),
     &            DATA3(55),M,XINOUT)
      DATA3N(11)=XINOUT
          CALL IN(DATA4(1),DATA4(2),DATA4(3),DATA4(4),DATA4(5),DATA4(6),
     &            N,XINOUT)
      DATA4N(1)=XINOUT
          CALL IN(DATA4(7),DATA4(8),DATA4(9),DATA4(10),DATA4(11),
     &            DATA4(12),M,XINOUT)
      DATA4N(2)=XINOUT
          CALL IN(DATA4(13),DATA4(14),DATA4(15),DATA4(16),DATA4(17),
     &            DATA4(18),N,XINOUT)
      DATA4N(3)=XINOUT
          CALL IN(DATA4(19),DATA4(20),DATA4(21),DATA4(22),DATA4(23),
     &            DATA4(24),M,XINOUT)
      DATA4N(4)=XINOUT
          CALL IN(DATA4(25),DATA4(26),DATA4(27),DATA4(28),DATA4(29),
     &            DATA4(30),N,XINOUT)
      DATA4N(5)=XINOUT
          CALL IN(DATA4(31),DATA4(32),DATA4(33),DATA4(34),DATA4(35),
     &            DATA4(36),M,XINOUT)
      DATA4N(6)=XINOUT
          CALL IN(DATA4(37),DATA4(38),DATA4(39),DATA4(40),DATA4(41),
     &            DATA4(42),N,XINOUT)
      DATA4N(7)=XINOUT
          CALL IN(DATA4(43),DATA4(44),DATA4(45),DATA4(46),DATA4(47),
     &            DATA4(48),M,XINOUT)
      DATA4N(8)=XINOUT
          CALL IN(DATA4(49),DATA4(50),DATA4(51),DATA4(52),DATA4(53),
     &            DATA4(54),N,XINOUT)
      DATA4N(9)=XINOUT
          CALL IN(DATA4(55),DATA4(56),DATA4(57),DATA4(58),DATA4(59),
     &            DATA4(60),M,XINOUT)
      DATA4N(10)=XINOUT
      DTX(1)=O(1)+50000.0
      DTX(2)=O(2)+50000.0
      DO 100 I=1,2
       TXTS4(1)=WTXT1(I,1)
       TXTS4(2)=WTXT1(I,2)
       TXTS4(3)=WTXT1(I,3)
       TXTS4(4)=WTXT1(I,4)
          CALL NCLETTER(DTX,TXTS4,WHDXYN(I),4,4.0,KOSUW1(I),SCL)
       DTX(2)=DTX(2)-100.0
  100 CONTINUE
      DTX(2)=DTX(2)-100.0
      L=0
      DO 150 I=1,18
       TXTS4(1)=WTXT2(I,1)
       TXTS4(2)=WTXT2(I,2)
       TXTS4(3)=WTXT2(I,3)
       TXTS4(4)=WTXT2(I,4)
       IF ((I.GE.13) .AND. (I.LE.15)) GO TO 130
       L=L+1
       GO TO 140
  130     CALL SS0007(DTX,TXTS4,0.0,4,4.0,SCL)
  140  DTX(2)=DTX(2)-100.0
  150 CONTINUE
      DTX(2)=DTX(2)-100.0
      KOSUW3(1)=1
      KOSUW3(2)=N
      KOSUW3(3)=M
      KOSUW3(4)=3
      DO 200 I=1,4
       TXTS4(1)=WTXT3(I,1)
       TXTS4(2)=WTXT3(I,2)
       TXTS4(3)=WTXT3(I,3)
       TXTS4(4)=WTXT3(I,4)
       IF (I .EQ. 4) GO TO 180
       GO TO 190
  180     CALL NCLETTER(DTX,TXTS4,0.0,4,4.0,KOSUW3(I),SCL)
  190  DTX(2)=DTX(2)-100.0
  200 CONTINUE
      DTX(1)=DTX(1)+2500.0
      DTX(2)=O(2)+50000.0
      DO 250 I=1,2
       TXTS4(1)=WTXT4(I,1)
       TXTS4(2)=WTXT4(I,2)
       TXTS4(3)=WTXT4(I,3)
       TXTS4(4)=WTXT4(I,4)
       DTX(2)=DTX(2)-100.0
  250 CONTINUE
      DTX(2)=DTX(2)-100.0
      KOSUW5(1)=N
      KOSUW5(2)=M
      KOSUW5(3)=3
      KOSUW5(4)=1
      L=0
      DO 300 I=1,4
       TXTS4(1)=WTXT5(I,1)
       TXTS4(2)=WTXT5(I,2)
       TXTS4(3)=WTXT5(I,3)
       TXTS4(4)=WTXT5(I,4)
       IF (I .EQ. 3) GO TO 280
       L=L+1
       GO TO 290
  280     CALL NCLETTER(DTX,TXTS4,0.0,4,4.0,KOSUW5(I),SCL)
  290  DTX(2)=DTX(2)-100.0
  300 CONTINUE
      DTX(2)=DTX(2)-100.0
      KOSUD1(1) =5
      KOSUD1(2) =N
      KOSUD1(3) =M
      KOSUD1(4) =3
      KOSUD1(5) =N
      KOSUD1(6) =M
      KOSUD1(7) =3
      KOSUD1(8) =N
      KOSUD1(9) =M
      KOSUD1(10)=3
      KOSUD1(11)=N
      KOSUD1(12)=M
      KOSUD1(13)=3
      KOSUD1(14)=2
      KOSUD1(15)=2
      L=0
      DO 350 I=1,15
       TXTS4(1)=DTXT1(I,1)
       TXTS4(2)=DTXT1(I,2)
       TXTS4(3)=DTXT1(I,3)
       TXTS4(4)=DTXT1(I,4)
       IF ((I.EQ.4).OR.(I.EQ.7).OR.(I.EQ.10).OR.(I.EQ.13)) GO TO 330
       L=L+1
          CALL NCLETTER(DTX,TXTS4,DATA1N(L),4,4.0,KOSUD1(I),SCL)
       GO TO 340
  330     CALL NCLETTER(DTX,TXTS4,0.0,4,4.0,KOSUD1(I),SCL)
  340  DTX(2)=DTX(2)-100.0
  350 CONTINUE
      DTX(1)=DTX(1)+2500.0
      DTX(2)=O(2)+50000.0
      DO 400 I=1,3
       TXTS4(1)=DTXT2(I,1)
       TXTS4(2)=DTXT2(I,2)
       TXTS4(3)=DTXT2(I,3)
       TXTS4(4)=DTXT2(I,4)
          CALL NCLETTER(DTX,TXTS4,DATA2N(I),4,4.0,KOSUD2(I),SCL)
       DTX(2)=DTX(2)-100.0
  400 CONTINUE
      DTX(2)=DTX(2)-100.0
      KOSUD3(1) =5
      KOSUD3(2) =N
      KOSUD3(3) =M
      KOSUD3(4) =3
      KOSUD3(5) =6
      KOSUD3(6) =6
      KOSUD3(7) =N
      KOSUD3(8) =M
      KOSUD3(9) =3
      KOSUD3(10)=N
      KOSUD3(11)=M
      KOSUD3(12)=3
      KOSUD3(13)=N
      KOSUD3(14)=M
      KOSUD3(15)=3
      L=0
      DO 450 I=1,15
       TXTS4(1)=DTXT3(I,1)
       TXTS4(2)=DTXT3(I,2)
       TXTS4(3)=DTXT3(I,3)
       TXTS4(4)=DTXT3(I,4)
       IF ((I.EQ.4).OR.(I.EQ.9).OR.(I.EQ.12).OR.(I.EQ.15)) GO TO 430
       L=L+1
          CALL NCLETTER(DTX,TXTS4,DATA3N(L),4,4.0,KOSUD3(I),SCL)
       GO TO 440
  430     CALL NCLETTER(DTX,TXTS4,0.0,4,4.0,KOSUD3(I),SCL)
  440  DTX(2)=DTX(2)-100.0
  450 CONTINUE
      DTX(1)=DTX(1)+2500.0
      DTX(2)=O(2)+50000.0
      KOSUD4(1) =N
      KOSUD4(2) =M
      KOSUD4(3) =3
      KOSUD4(4) =N
      KOSUD4(5) =M
      KOSUD4(6) =3
      KOSUD4(7) =N
      KOSUD4(8) =M
      KOSUD4(9) =3
      KOSUD4(10)=N
      KOSUD4(11)=M
      KOSUD4(12)=3
      KOSUD4(13)=N
      KOSUD4(14)=M
      KOSUD4(15)=3
      L=0
      DO 500 I=1,15
       TXTS4(1)=DTXT4(I,1)
       TXTS4(2)=DTXT4(I,2)
       TXTS4(3)=DTXT4(I,3)
       TXTS4(4)=DTXT4(I,4)
       IF ((I.EQ.3).OR.(I.EQ.6).OR.(I.EQ.9).OR.(I.EQ.12).OR.(I.EQ.15))
     & GO TO 480
      L=L+1
          CALL NCLETTER(DTX,TXTS4,DATA4N(L),4,4.0,KOSUD4(I),SCL)
       GO TO 490
  480     CALL NCLETTER(DTX,TXTS4,0.0,4,4.0,KOSUD4(I),SCL)
  490  DTX(2)=DTX(2)-100.0
  500 CONTINUE
      DTX(2)=DTX(2)-100.0
  999 CONTINUE
      RETURN
      END
      SUBROUTINE IN(VAR1,VAR2,VAR3,VAR4,VAR5,VAR6,KOSU,XINOUT)
      REAL*4 VAR(6)
      XINOUT=0
      DO 50 I=1,6
       VAR(I)=0.0
   50 CONTINUE
      IF (KOSU .LE. 0) GO TO 999
      VAR(1)=VAR1
      VAR(2)=VAR2
      VAR(3)=VAR3
      VAR(4)=VAR4
      VAR(5)=VAR5
      VAR(6)=VAR6
      N=KOSU-1
      DO 100 I=1,KOSU
       XINOUT=XINOUT+VAR(I)*10**N
       N=N-1
  100 CONTINUE
  999 RETURN
      END
      SUBROUTINE NCLETTER(P,TE,W,N,H,KOSU,SCL)
      DIMENSION P(2)
      CHARACTER*4 TEXT(6),TE(4)
      CHARACTER*8 OUT
      DO 10 I=1,6
       TEXT(I)= '    '
   10 CONTINUE
          CALL INLETTER(W,KOSU,OUT,NRC)
      DO 100 I=1,N
       TEXT(I)=TE(I)
  100 CONTINUE
       TEXT(N+1) = OUT(1:4)
       TEXT(N+2) = OUT(5:8)
          CALL IS0002(P,24,TEXT,H,0.0,SCL,*999)
  999 CONTINUE
      RETURN
      END
      SUBROUTINE SS0007(P,TE,W,N,H,SCL)
      DIMENSION P(2)
      CHARACTER*4 TE(4),A(4),AA/'    '/
      CHARACTER*4 T1(2),T2(3),T3(4),T4(5),T5(6),T6(7)
      NW=10.*W+0.01
      DO 10 I=1,4
       A(I)=AA
   10 CONTINUE
      NY=NW/10
      NWY = NW - 10 * NY
      IF ( NWY .LE. 0 ) THEN
          CALL NTOA(NY,0,M,A)
      ELSE
          CALL NTOA(NW,0,M,A)
      END IF
   50 MM=(M+3)/4
      NM=N+MM
      NN=N+1
      NX=4*N+M
      GO TO (999,100,200,300,400,500,600),NM
      GO TO 999
  100 DO 110 I=1,N
       T1(I)=TE(I)
  110 CONTINUE
      DO 120 I=NN,NM
       T1(I)=A(I-N)
  120 CONTINUE
          CALL IS0002(P,NX,T1,H,0.0,SCL,*999)
      GO TO 999
  200 DO 210 I=1,N
       T2(I)=TE(I)
  210 CONTINUE
      DO 220 I=NN,NM
       T2(I)=A(I-N)
  220 CONTINUE
          CALL IS0002(P,NX,T2,H,0.0,SCL,*999)
      GO TO 999
  300 DO 310 I= 1,N
       T3(I)=TE(I)
  310 CONTINUE
      DO 320 I=NN,NM
       T3(I)=A(I-N)
  320 CONTINUE
          CALL IS0002(P,NX,T3,H,0.0,SCL,*999)
      GO TO 999
  400 DO 410 I=1,N
       T4(I)=TE(I)
  410 CONTINUE
      DO 420 I=NN,NM
       T4(I)=A(I-N)
  420 CONTINUE
          CALL IS0002(P,NX,T4,H,0.0,SCL,*999)
      GO TO 999
  500 DO 510 I=1,N
       T5(I)=TE(I)
  510 CONTINUE
      DO 520 I=NN,NM
       T5(I)=A(I-N)
  520 CONTINUE
          CALL IS0002(P,NX,T5,H,0.0,SCL,*999)
      GO TO 999
  600 DO 610 I=1,N
       T6(I)=TE(I)
  610 CONTINUE
      DO 620 I=NN,NM
       T6(I)=A(I-N)
  620 CONTINUE
          CALL IS0002(P,NX,T6,H,0.0,SCL,*999)
  999 CONTINUE
      RETURN
      END
      SUBROUTINE IS0002(P, NCHAR, TEXT, HEIGHT, ANG,SCL, *)
      DIMENSION     P(2)
      CHARACTER*4   TEXT(64)
      X      = P(1)
      Y      = P(2)
      WIDTH  = HEIGHT*0.7145
      IWDSCL = 1
      IWDTRN = 1
      JUST   = 0
      IPOSH  = 1
      IPOSV  = 3
      SLANT  = 0.0
      ISPAN  = 0
      HORSP  = HEIGHT
      VERSP  = HEIGHT + 0.5
      WEIGHT = 0.0
          CALL IUESUP(X,Y,ANG,NCHAR,HEIGHT,WIDTH,TEXT,
     &                  IWDSCL,IWDTRN,JUST,IPOSH,IPOSV,SLANT,ISPAN,
     &                  HORSP,VERSP,WEIGHT,SCL,*999)
  800 CONTINUE
      RETURN
  999 RETURN 1
      END
      SUBROUTINE NTOA(NLETTER,NUMDEC,NCHAR,ALETTER)
      CHARACTER* 2 ALETTER(8),TEXT2
      CHARACTER*16 TEX16
      DATA TEX16/'                '/
      RLETTER = FLOAT(NLETTER)
      RLETTER = RLETTER / 10 ** NUMDEC
      CALL UTCNVT(TEX16,NUMDEC,RLETTER,*999)
      NCHAR = 0
      I     = 1
      DO WHILE (TEX16(I:I) .NE. ' ')
            NCHAR = NCHAR + 1
            I      = I      + 1
      END DO
      JJ = (NCHAR + 1) / 2
      DO 100 I = 1,JJ
       K = I*2 - 1
       TEXT2 = TEX16(K:K+1)
       ALETTER(I) = TEXT2
  100 CONTINUE
  999 RETURN
      END
      subroutine UTCNVT()
      entry INLETTER()
      entry IUESUP()
      end
