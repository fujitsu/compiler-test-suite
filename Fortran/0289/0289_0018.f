      IMPLICIT INTEGER(A-Z)                                             00000100
      PARAMETER(QMMAX=8)                                                00000200
      REAL*8 TIME1,TIME2                                                00000300
      INTEGER QM(QMMAX,QMMAX),QMI(QMMAX),QMJ(QMMAX)                     00000400
      DATA QM/64*0/                                                     00000500
      CALL CLOCK(TIME1,1,2)                                             00000600
      QN=0                                                              00000700
      QPAT=0                                                            00000800
      QI=1                                                              00001000
      QJ=1                                                              00001100
   10 DO 40 J=QJ,QMMAX                                                  00001200
       DO 20 I=QI,QMMAX                                                 00001300
        IF (QM(I,J).EQ.0) THEN                                          00001400
         CALL SET(QM,I,J)                                               00001500
         QN=QN+1                                                        00001600
         QMI(QN)=I                                                      00001700
         QMJ(QN)=J                                                      00001800
         IF (QN.NE.QMMAX) GO TO 30                                      00001900
         GO TO 60                                                       00002000
         END IF                                                         00002100
   20   CONTINUE                                                        00002200
   30  QI=1                                                             00002300
   40  CONTINUE                                                         00002400
   50 CALL OMIT(QM,QMI(QN),QMJ(QN))                                     00002600
      QI=QMI(QN)                                                        00002700
      QJ=QMJ(QN)                                                        00002800
      QN=QN-1                                                           00002900
      QI=QI+1                                                           00003000
      IF (QI.GT.QMMAX) THEN                                             00003100
       QI=1                                                             00003200
       QJ=QJ+1                                                          00003300
       IF (QJ.GT.QMMAX) THEN                                            00003400
        IF (QN.EQ.0) GOTO 99999                                         00003500
        GO TO 50                                                        00003600
        END IF                                                          00003700
       END IF                                                           00003800
      GOTO 10                                                           00003900
   60 QPAT=QPAT+1                                                       00004100
      CALL REGIST(QPAT,QM)                                              00004200
      GO TO 50                                                          00004300
99999 CONTINUE                                                          00004400
      CALL CLOCK(TIME2,1,2)                                             00004500
      WRITE(6,100) QPAT,TIME2-TIME1                                     00004600
  100 FORMAT(1H1,'PATTERN :',I3,2X,'TIME :',F10.3,'Msec')               00004800
      END                                                               00004900
      SUBROUTINE SET(QM,N,M)                                            00005100
      IMPLICIT INTEGER(A-Z)                                             00005200
      PARAMETER(QMMAX=8)                                                00005300
      INTEGER QM(QMMAX,QMMAX)                                           00005400
      DO 10 I=1,QMMAX                                                   00005500
   10  QM(I,M)=QM(I,M)+1                                                00005600
      DO 20 J=1,QMMAX                                                   00005700
   20  QM(N,J)=QM(N,J)+1                                                00005800
      A=N+M                                                             00005900
      S=N-M                                                             00006000
      IF (A.LE.QMMAX+1) THEN                                            00006100
       DO 31 I=1,A-1                                                    00006200
   31   QM(I,A-I)=QM(I,A-I)+1                                           00006300
      ELSE                                                              00006400
       DO 32 I=A-QMMAX,QMMAX                                            00006500
   32   QM(I,A-I)=QM(I,A-I)+1                                           00006600
       END IF                                                           00006700
      IF (S.LE.0) THEN                                                  00006800
       DO 41 I=1,S+QMMAX                                                00006900
   41   QM(I,I-S)=QM(I,I-S)+1                                           00007000
      ELSE                                                              00007100
       DO 42 I=S+1,QMMAX                                                00007200
   42   QM(I,I-S)=QM(I,I-S)+1                                           00007300
       END IF                                                           00007400
      QM(N,M)=9                                                         00007500
      RETURN                                                            00007600
      END                                                               00007700
      SUBROUTINE OMIT(QM,N,M)                                           00007900
      IMPLICIT INTEGER(A-Z)                                             00008000
      PARAMETER(QMMAX=8)                                                00008100
      INTEGER QM(QMMAX,QMMAX)                                           00008200
      DO 10 I=1,QMMAX                                                   00008300
   10  QM(I,M)=QM(I,M)-1                                                00008400
      DO 20 J=1,QMMAX                                                   00008500
   20  QM(N,J)=QM(N,J)-1                                                00008600
      A=N+M                                                             00008700
      S=N-M                                                             00008800
      IF (A.LE.QMMAX+1) THEN                                            00008900
       DO 31 I=1,A-1                                                    00009000
   31   QM(I,A-I)=QM(I,A-I)-1                                           00009100
      ELSE                                                              00009200
       DO 32 I=A-QMMAX,QMMAX                                            00009300
   32   QM(I,A-I)=QM(I,A-I)-1                                           00009400
       END IF                                                           00009500
      IF (S.LE.0) THEN                                                  00009600
       DO 41 I=1,S+QMMAX                                                00009700
   41   QM(I,I-S)=QM(I,I-S)-1                                           00009800
      ELSE                                                              00009900
       DO 42 I=S+1,QMMAX                                                00010000
   42   QM(I,I-S)=QM(I,I-S)-1                                           00010100
       END IF                                                           00010200
      QM(N,M)=0                                                         00010300
      RETURN                                                            00010400
      END                                                               00010500
      SUBROUTINE REGIST(QPAT,QM)                                        00010700
      IMPLICIT INTEGER(A-Z)                                             00010800
      PARAMETER(QMMAX=8)                                                00010900
      INTEGER QM(QMMAX,QMMAX)                                           00011000
      CHARACTER CQM(QMMAX,QMMAX,92),Q,B                                 00011100
      PARAMETER(Q='Q',B='*')                                            00011200
      CHARACTER P(10)                                                   00011300
      DATA P/9*B,Q/                                                     00011400
      COMMON /BLK/CQM                                                   00011500
      DO 10 J=1,QMMAX                                                   00011600
       DO 10 I=1,QMMAX                                                  00011700
   10    CQM(I,J,QPAT)=P(QM(I,J)+1)                                     00011800
      RETURN                                                            00012200
      END                                                               00012300
      SUBROUTINE CHECK                                                  00012500
      CHARACTER*64 CQM(92)                                              00012600
      COMMON/BLK/CQM                                                    00012700
      CHARACTER*64 WWW                                                  00012800
   10 DO 20 I=1,91                                                      00012900
       IF (CQM(I).LT.CQM(I+1)) THEN                                     00013000
        WWW=CQM(I+1)                                                    00013100
        CQM(I+1)=CQM(I)                                                 00013200
        CQM(I)=WWW                                                      00013300
        GO TO 10                                                        00013400
        END IF                                                          00013500
   20  CONTINUE                                                         00013600
      WRITE(6,100) ((CQM(J)(I:I+7),I=1,64,8),J=1,92)                    00013700
  100 FORMAT(92(/1H ,8(1X,A8)))                                         00013800
      RETURN                                                            00013900
      END                                                               00014000
      BLOCKDATA                                                         00014200
      CHARACTER*64 CQM(92)                                              00014300
      COMMON/BLK/CQM                                                    00014400
      DATA CQM/92*' '/                                                  00014500
      END                                                               00014600
      subroutine clock(a,i,j)
      real*8 a
      a=1.0
      end
