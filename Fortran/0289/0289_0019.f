      IMPLICIT INTEGER(A-Z)                                             00000100
      PARAMETER(QUEEN=8)                                                00000200
      REAL*8 TIME1,TIME2                                                00000300
      LOGICAL H(QUEEN),V(QUEEN),A(2:QUEEN+QUEEN),S(1-QUEEN:QUEEN-1)     00000400
      INTEGER QMI(QUEEN)                                                00000500
      INTEGER OMIT                                                      00000600
      COMMON /QM/A,S,H,V,QMI                                            00000700
      CALL CLOCK(TIME1,1,2)                                             00000900
      QPAT=0                                                            00001000
      CALL SET(1,1)                                                     00001100
      QJ=2                                                              00001200
      QI=1                                                              00001300
   10 DO 20 I=QI,QUEEN                                                  00001500
       IF (H(I).AND.A(I+QJ).AND.S(I-QJ)) GO TO 50                       00001600
   20  CONTINUE                                                         00001700
   30 IF (QJ.EQ.1) GOTO 99999                                           00001900
      QJ=QJ-1                                                           00002000
   40 QI=OMIT(QJ)                                                       00002100
      IF (QI.EQ.QUEEN) GO TO 30                                         00002200
      QI=QI+1                                                           00002300
      GOTO 10                                                           00002400
   50 CALL SET(I,QJ)                                                    00002600
      IF (QJ.EQ.QUEEN) THEN                                             00002700
       QPAT=QPAT+1                                                      00002800
       GO TO 40                                                         00003100
       END IF                                                           00003200
      QJ=QJ+1                                                           00003300
      QI=1                                                              00003400
      GO TO 10                                                          00003500
99999 CONTINUE                                                          00003600
      CALL CLOCK(TIME2,1,2)                                             00003700
      WRITE(6,100) QPAT,TIME2-TIME1                                     00003800
      STOP                                                              00004000
  100 FORMAT(1H1,'PATTERN :',I3,2X,'TIME :',F10.3,' Msec')              00004100
      END                                                               00004200
      SUBROUTINE SET(M,N)                                               00004400
      IMPLICIT INTEGER(A-Z)                                             00004500
      PARAMETER(QUEEN=8)                                                00004600
      LOGICAL H(QUEEN),V(QUEEN),A(2:QUEEN+QUEEN),S(1-QUEEN:QUEEN-1)     00004700
      INTEGER QMI(QUEEN)                                                00004800
      COMMON /QM/A,S,H,V,QMI                                            00004900
      QMI(N)=M                                                          00005000
      H(M)  =.FALSE.                                                    00005100
      V(N)  =.FALSE.                                                    00005200
      A(M+N)=.FALSE.                                                    00005300
      S(M-N)=.FALSE.                                                    00005400
      RETURN                                                            00005500
      END                                                               00005600
      INTEGER FUNCTION OMIT(N)                                          00005800
      IMPLICIT INTEGER(A-Z)                                             00005900
      PARAMETER(QUEEN=8)                                                00006000
      LOGICAL H(QUEEN),V(QUEEN),A(2:QUEEN+QUEEN),S(1-QUEEN:QUEEN-1)     00006100
      INTEGER QMI(QUEEN)                                                00006200
      COMMON /QM/A,S,H,V,QMI                                            00006300
      OMIT=QMI(N)                                                       00006400
      H(OMIT)  =.TRUE.                                                  00006500
      V(N)     =.TRUE.                                                  00006600
      A(OMIT+N)=.TRUE.                                                  00006700
      S(OMIT-N)=.TRUE.                                                  00006800
      RETURN                                                            00006900
      END                                                               00007000
      BLOCKDATA                                                         00011500
      IMPLICIT INTEGER(A-Z)                                             00011600
      PARAMETER(QUEEN=8)                                                00011700
      PARAMETER(QAELM=QUEEN+QUEEN-2+1)                                  00011800
      PARAMETER(QSELM=QUEEN-1-(1-QUEEN)+1)                              00011900
      CHARACTER*(QUEEN*QUEEN) CQM(92)                                   00012000
      COMMON/BLK/CQM                                                    00012100
      LOGICAL H(QUEEN),V(QUEEN),A(2:QUEEN+QUEEN),S(1-QUEEN:QUEEN-1)     00012200
      INTEGER QMI(QUEEN)                                                00012300
      COMMON /QM/A,S,H,V,QMI                                            00012400
      DATA CQM/92*' '/                                                  00012500
      DATA A,S,H,V/QAELM*.TRUE.,QSELM*.TRUE.,QUEEN*.TRUE.,QUEEN*.TRUE./ 00012600
      END                                                               00012700
      subroutine clock(a,i,j)
      real*8 a
      a=1.0
      end
