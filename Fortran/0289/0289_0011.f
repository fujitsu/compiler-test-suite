      PROGRAM  MAIN                                                     00000600
       INTEGER    IA(5),IB(6),IC(4),ID(5),T(20),SZ                      00000700
       CHARACTER  CA(5),CB(3),CC(9),CD(10),C(30)                        00000800
       CHARACTER*50 STR                                                 00000900
       COMMON     STR                                                   00001000
       EQUIVALENCE (IA(2),IB)                                           00001200
       EQUIVALENCE (IB(5),IC)                                           00001300
       EQUIVALENCE (IC(3),ID(2))                                        00001400
       EQUIVALENCE (T(3),IA)                                            00001500
       EQUIVALENCE (C,CA)                                               00001600
       EQUIVALENCE (C(7),CB)                                            00001700
       EQUIVALENCE (C(11),CC)                                           00001800
       EQUIVALENCE (C(21),CD)                                           00001900
        PRINT *,'===== START ====='                                     00002100
        DO 10 I=1,30                                                    00002200
          C(I)='X'                                                      00002300
   10   CONTINUE                                                        00002400
        SZ=30                                                           00002500
        CALL SUBC(C,SZ)                                                 00002600
        CALL CHK1(1)                                                    00002700
        DO 20 I=1,5                                                     00002800
          CA(I)='A'                                                     00002900
   20   CONTINUE                                                        00003000
        CALL SUBC(C,SZ)                                                 00003100
        CALL CHK1(2)                                                    00003200
        DO 30 I=1,3                                                     00003300
          CB(I)='B'                                                     00003400
   30   CONTINUE                                                        00003500
        CALL SUBC(C,SZ)                                                 00003600
        CALL CHK1(3)                                                    00003700
        DO 40 I=1,9                                                     00003800
          CC(I)='C'                                                     00003900
   40   CONTINUE                                                        00004000
        CALL SUBC(C,SZ)                                                 00004100
        CALL CHK1(4)                                                    00004200
        DO 50 I=1,10                                                    00004300
          CD(I)='D'                                                     00004400
   50   CONTINUE                                                        00004500
        CALL SUBC(C,SZ)                                                 00004600
        CALL CHK1(5)                                                    00004700
        PRINT *,' '                                                     00004900
        DO 60 I=1,20                                                    00005500
          T(I)=0                                                        00005600
   60   CONTINUE                                                        00005700
        CALL CHK2(1,T)                                                  00005900
        DO 70 I=1,5                                                     00006000
          IA(I)=I                                                       00006100
   70   CONTINUE                                                        00006200
        CALL CHK2(2,T)                                                  00006400
        DO 80 I=1,6                                                     00006500
          IB(I)=9+I                                                     00006600
   80   CONTINUE                                                        00006700
        CALL CHK2(3,T)                                                  00006900
        DO 90 I=1,4                                                     00007000
          IC(I)=19+I                                                    00007100
   90   CONTINUE                                                        00007200
        CALL CHK2(4,T)                                                  00007400
        DO 100 I=1,5                                                    00007500
          ID(I)=29+I                                                    00007600
  100   CONTINUE                                                        00007700
        CALL CHK2(5,T)                                                  00007900
        PRINT *,'***** OK *****'                                        00008000
       END                                                              00008100
      SUBROUTINE SUBC(CH,LN)                                            00008400
       CHARACTER    CH(LN)                                              00008500
       INTEGER      LN,I,A,K                                            00008600
       CHARACTER*50 ST                                                  00008700
       COMMON       ST                                                  00008800
        DO 150 I=1,50                                                   00009000
          ST(I:I)=' '                                                   00009100
  150   CONTINUE                                                        00009200
        K=1                                                             00009300
        DO 200 I=1,LN                                                   00009400
          A=MOD(I,5)                                                    00009500
          IF(A.EQ.1) THEN                                               00009600
            ST(K:K)=' '                                                 00009700
            IF(I.NE.1) K=K+1                                            00009800
          ENDIF                                                         00009900
          ST(K:K)=CH(I)                                                 00010000
          K=K+1                                                         00010100
  200   CONTINUE                                                        00010200
        RETURN                                                          00010300
      END                                                               00010400
      SUBROUTINE CHK1(K)                                                00010600
      INTEGER K                                                         00010700
      CHARACTER*50 STRNG,DA(5)                                          00010800
      COMMON    STRNG                                                   00010900
      DATA DA/'XXXXX XXXXX XXXXX XXXXX XXXXX XXXXX               ',     00011000
     1        'AAAAA XXXXX XXXXX XXXXX XXXXX XXXXX               ',     00011100
     1        'AAAAA XBBBX XXXXX XXXXX XXXXX XXXXX               ',     00011200
     1        'AAAAA XBBBX CCCCC CCCCX XXXXX XXXXX               ',     00011300
     1        'AAAAA XBBBX CCCCC CCCCX DDDDD DDDDD               '/     00011400
        IF(STRNG.NE.DA(K)) THEN                                         00011500
          PRINT *,'*** NG *** STR=',STRNG                               00011600
          PRINT *,'           RD =',DA(K)                               00011700
          PRINT *,'===== END ====='                                     00011800
          STOP                                                          00011900
        ENDIF                                                           00012000
        PRINT *,'*** ',K,' * OK *** '                                   00012100
        RETURN                                                          00012200
      END                                                               00012300
      SUBROUTINE CHK2(K,TT)                                             00012500
       INTEGER K,TB(20,5),TT(20)                                        00012600
       DATA TB/0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,                 00012700
     1         0,0,1,2,3,4,5,0,0,0,0,0,0,0,0,0,0,0,0,0,                 00012800
     1         0,0,1,10,11,12,13,14,15,0,0,0,0,0,0,0,0,0,0,0,           00012900
     1         0,0,1,10,11,12,13,20,21,22,23,0,0,0,0,0,0,0,0,0,         00013000
     1         0,0,1,10,11,12,13,20,30,31,32,33,34,0,0,0,0,0,0,0/       00013100
        DO 1000 I=1,20                                                  00013300
          IF(TB(I,K).NE.TT(I)) THEN                                     00013400
            PRINT *,'*** NG *** T=',TT                                  00013500
            PRINT *,'          RT=',(TB(J,K),J=1,20)                    00013600
            PRINT *,'===== END ====='                                   00013700
            STOP                                                        00013800
          ENDIF                                                         00013900
 1000   CONTINUE                                                        00014000
        PRINT *,'*** OK ***'                                            00014100
        RETURN                                                          00014200
      END                                                               00014300
