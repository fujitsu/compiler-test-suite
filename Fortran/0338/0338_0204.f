      REAL A(10)/10*1/,B(10)/10*2/,C(10)/10*3/
      REAL*8 DA(10)/10*1/,DB(10)/10*2/,DC(10)/10*3/,DSA,DSB,DSC
      INTEGER IA(10)/10*1/,IB(10)/10*2/,IC(10)/10*3/
      INTEGER L(10)/1,2,3,4,5,6,7,8,9,10/
      J=0
      DO 1 I=1,10
       IF(A(I).GT.0) THEN
       J=J+1
       B(J)=I
      ENDIF
1     CONTINUE
      J=1
      DO 2 I=1,10
       IF(B(I).LT.0)    THEN
        C(J)=I
        J=J+1
       ENDIF
2      CONTINUE
       SA=0
       SB=0
       SC=0
      DO 4 I=1,10
       SA=SA+A(I)
       SB=SB+B(I)
4      SC=SC+C(I)
       WRITE(6,*)  SA, SB, SC
      STOP
      END
