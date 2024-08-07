      EXTERNAL SUBX,SUBY,SUBZ
      DIMENSION LLL(125),MMM(125),NNN(250)
      DIMENSION LL1(5,5,5),LL2(5,5,5),LL3(2,2),LL4(2,2),LL5(2)
      LOGICAL   LLL,MMM,NNN,LL1,LL2,LL3,LL4,LL5
      LOGICAL   L1,L2,L3
      COMMON    /LCOM/LL3,L3/CNT/NP
      EQUIVALENCE (LLL(1),LL1(1,1,1),NNN(1))
      EQUIVALENCE (MMM(1),LL2(1,1,1),NNN(126))
C
      WRITE  (6,120)
      NP=0
C
C
      CALL SUB1 (.TRUE.,.TRUE.,L1,L2)
      CALL CHECK (01,L1,.TRUE.)
      CALL CHECK (01,L2,.TRUE.)
C
      L1=.FALSE.
      CALL SUB1 (L1,.NOT.L1,LL5(1),LL5(2))
      CALL CHECK (01,LL5(1),.FALSE.)
      CALL CHECK (01,LL5(2),.TRUE.)
C
      DO 10 I=1,2
      DO 10 J=1,2
      LL4(I,J)=.TRUE.
   10 CONTINUE
      CALL SUBA (LL4,LL4,4)
      DO 20 I=1,2
      DO 20 J=1,2
      CALL CHECK (01,LL4(I,J),.FALSE.)
   20 CONTINUE
C
C
      L1=.TRUE.
      L2=.FALSE.
      CALL SUBB (SUBX,L1,.TRUE.,L2)
      CALL CHECK (02,L2,.TRUE.)
      L2=.FALSE.
      CALL SUBB (SUBY,L1,.NOT.L1,L2)
      CALL CHECK (02,L2,.TRUE.)
      L2=.TRUE.
      CALL SUBB (SUBZ,L1,L2,.TRUE.)
      CALL CHECK (02,L2,.FALSE.)
C
C
      DO 70 I=1,2
      DO 70 J=1,2
      LL3(I,J)=.TRUE..OR..TRUE.
   70 CONTINUE
      L3=.FALSE.
      CALL SUBC
      CALL CHECK (03,L3,.TRUE.)
C
      DO 30 I=1,125
      LLL(I)=.TRUE.
   30 CONTINUE
      DO 40 I=1,5
      LL1(I,I,I)=.FALSE.
   40 CONTINUE
      CALL SUBA (LL1,LL2,125)
      DO 50 I=1,125
      CALL SUB1 (.NOT.(LLL(I).OR.MMM(I)),(LLL(I).AND.MMM(I)),LLL(I),
     1           MMM(I))
   50 CONTINUE
   51  L1=.FALSE.
      DO  65  I=1,250
      IF  (.NOT.(NNN(I).OR..FALSE.))GO TO 60
      CALL CHECK (04,NNN(I),.FALSE.)
      NP=NP+1
      IF (NP.EQ.26) CALL HEAD
      WRITE (6,140) I
   60  L1= L1.OR.NNN(I)
   65 CONTINUE
      IF  (L1) GO TO 99
      CALL CHECK (04, L1,.FALSE.)
      NP=NP+1
      IF  (NP.EQ.26) CALL HEAD
      WRITE (6,150)
   99 CONTINUE
  999 STOP
  120 FORMAT (1H0,10X,11H- JUSTICE -,5X,8H- ITEM -,6X,19H- COMPUTED RESU
     1LT -,10X,17H- COMPARE VALUE  /)
  140 FORMAT  (1H0 19X,4HNNN(,I3,1H),7H*ERROR* )
  150 FORMAT  (1H0 19X,23HNNN(I) I=1,250 ALL *OK* )
      END
C
      SUBROUTINE HEAD
      COMMON /CNT/N
      N=0
      WRITE (6,10)
   10 FORMAT (1H1,10X,11H- JUSTICE -,5X,8H- ITEM -,6X,19H- COMPUTED RESU
     1LT -,10X,17H- COMPARE VALUE  /)
      RETURN
      END
C
      SUBROUTINE CHECK (N,LVAL,LANS)
      LOGICAL LVAL,LANS
      COMMON /CNT/M
      M=M+1
      IF (M.EQ.26) CALL HEAD
      IF (LVAL.AND.LANS) GO TO 10
      IF (.NOT.(LVAL.OR.LANS)) GO TO 10
      WRITE (6,110) N,LVAL,LANS
      RETURN
   10 WRITE (6,100) N,LVAL,LANS
      RETURN
  100 FORMAT (1H0,12X,7H*OK*   ,8X,1H(,I2,1H),15X,L1,27X,L1 )
  110 FORMAT (1H0,12X,7H*ERROR*,8X,1H(,I2,1H),15X,L1,27X,L1 )
      END
C
      SUBROUTINE SUB1 (A,B,L1,L2)
      LOGICAL A,B,L1,L2
      L1=A.AND.B
      L2=A.OR.B
      RETURN
      END
C
      SUBROUTINE SUBA (LL,MM,N)
      DIMENSION LL(N),MM(N)
      LOGICAL LL,MM
      DO 10 I=1,N
      MM(I)=.NOT.LL(I)
   10 CONTINUE
      RETURN
      END
      SUBROUTINE SUBB (SUB,L1,L2,L3)
      LOGICAL L1,L2,L3
      CALL SUB (L1,L2,L3)
      RETURN
      END
C
      SUBROUTINE SUBC
      COMMON /LCOM/AA(2,2),BB
      LOGICAL AA,BB
      BB=(AA(1,1).AND.AA(1,2)).AND.(AA(2,1).AND.AA(2,2))
      RETURN
      END
C
      SUBROUTINE SUBX (L1,L2,L3)
      LOGICAL L1,L2,L3
      L3=L1.AND.L2
      RETURN
      END
C
      SUBROUTINE SUBY (L1,L2,L3)
      LOGICAL L1,L2,L3
      L3=L1.OR.L2
      RETURN
      END
      SUBROUTINE SUBZ (L1,L2,L3)
      LOGICAL L1,L2,L3
      L2=.NOT.L1
      RETURN
      END
