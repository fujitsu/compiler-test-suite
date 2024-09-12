       IMPLICIT REAL*4(A),REAL*8(B),REAL*8(C)
       IMPLICIT COMPLEX*8(D),COMPLEX*16(E),COMPLEX*16(F)
       COMMON /BLK01/ R1,R2,R3,R4
       COMMON /BLK02/ D1,D2,D3,D4
       COMMON /BLK03/ Q1,Q2,Q3,Q4
       COMMON /BLK04/ C1,C2,C3,C4
       COMMON /BLK05/ CD1,CD2,CD3,CD4
       COMMON /BLK05/ CQ1,CQ2,CQ3,CQ4
       REAL*  4 R1(10,10),R2(10,10),R3(10,10),R4(10,10)
       REAL*  8 D1(10,10),D2(10,10),D3(10,10),D4(10,10)
       REAL*  8 Q1(10,10),Q2(10,10),Q3(10,10),Q4(10,10)
       COMPLEX*8 C1(10,10),C2(10,10),C3(10,10),C4(10,10)
       COMPLEX*16 CD1(10,10),CD2(10,10),CD3(10,10),CD4(10,10)
       COMPLEX*16 CQ1(10,10),CQ2(10,10),CQ3(10,10),CQ4(10,10)

       A5=0.
       A6=0.
       DO 10 JJ=1,5
       DO 10 J=1,10
         A1=R1(1,J)*2.0
         A2=R2(2,J)*2.0
         A3=R3(3,J)*2.0
         A4=0.
         I=J
         R4(J,1)=A1+A2+A3
         A5=A1+A2+A3+A4+1.0
         R4(J,5)=R1(1,I)+R2(2,I)+R3(3,I)+A5+A4+R1(1,J)*2.0
10     CONTINUE

       B5=0.
       B6=0.
       DO 20 JJ=1,10
       DO 20 J=1,10
         B1=D1(1,J)*2.0
         B2=D2(2,J)*2.0
         B3=D3(3,J)*2.0
         B4=D4(J,4)*2.0
         D4(J,5)=B4+1.0
20     CONTINUE

       CC5=0.
       CC6=0.
       DO 30 JJ=1,3
       DO 30 J=1,10
         CC1=Q1(1,J)*2.0
         CC2=Q2(2,J)*2.0
         CC3=Q3(3,J)*2.0
         CC4=Q4(J,1)*2.0
         CC5=CC1+CC2+CC3+CC4+CC6
         I=J
         Q4(J,8)=Q1(1,I)+CC5+Q2(2,I)+Q3(3,J)+Q4(4,I)+CC1+CC2+CC3+CC4
30     CONTINUE

       DD5=(1.0,1.0)
       DD6=(1.0,1.0)
       DO 40 JJ=1,10
       DO 40 J=1,10
         DD1=C1(1,J)*(2.0,1.0)
         DD2=C2(2,J)*(2.0,1.0)
         DD3=C3(3,J)*(2.0,1.0)
         DD4=C4(J,1)*(2.0,1.0)
         DD5=DD1+DD2+DD3+DD4+DD6+(1.0,1.0)
         I=J
         C4(J,2)=DD5+C1(1,I)+C2(2,I)+C3(3,J)+C4(4,I)+DD1+DD2+DD3
40     CONTINUE

       ED5=(1.0,0.5)
       ED6=(1.0,2.0)
       DO 50 JJ=1,2
       DO 50 J=1,10
         ED1=CD1(1,J)*(2.0,1.0)
         ED2=CD2(2,J)*(2.0,1.0)
         ED3=CD3(3,J)*(2.0,1.0)
         ED4=CD4(4,J)*(2.0,1.0)
         ED5=ED1+ED2+ED3+ED4+ED6
         I=J
         CD4(J,2)=ED6+CD1(1,I)+CD2(2,I)+CD3(3,J)+CD4(4,I)+ED6+ED2+ED3
50     CONTINUE

       FD5=(0.0,0.0)
       FD6=(0.0,0.0)
       DO 60 J=1,10
         FD1=CQ1(1,J)*(2.0,1.0)
         I=J
         CQ4(1,J)=CQ1(1,I)+CQ2(2,I)+CQ3(3,J)+CQ4(4,I)+FD1+FD5+FD6
60     CONTINUE
       WRITE(6,*) R4,D4,Q4,C4,CD4,CQ4
       STOP
       END
       BLOCK DATA
       COMMON /BLK01/ R1,R2,R3,R4
       COMMON /BLK02/ D1,D2,D3,D4
       COMMON /BLK03/ Q1,Q2,Q3,Q4
       COMMON /BLK04/ C1,C2,C3,C4
       COMMON /BLK05/ CD1,CD2,CD3,CD4
       COMMON /BLK05/ CQ1,CQ2,CQ3,CQ4
       REAL*  4 R1(10,10),R2(10,10),R3(10,10),R4(10,10)
       REAL*  8 D1(10,10),D2(10,10),D3(10,10),D4(10,10)
       REAL*  8 Q1(10,10),Q2(10,10),Q3(10,10),Q4(10,10)
       COMPLEX*8 C1(10,10),C2(10,10),C3(10,10),C4(10,10)
       COMPLEX*16 CD1(10,10),CD2(10,10),CD3(10,10),CD4(10,10)
       COMPLEX*16 CQ1(10,10),CQ2(10,10),CQ3(10,10),CQ4(10,10)
       DATA R1/100*1.0/,R2/100*1.0/,R3/100*1.0/,R4/100*1.0/
       DATA D1/100*1.0/,D2/100*1.0/,D3/100*1.0/,D4/100*1.0/
       DATA Q1/100*1.0/,Q2/100*1.0/,Q3/100*1.0/,Q4/100*1.0/
       DATA C1/100*(1.0,1.0)/,C2/100*(1.0,1.0)/
       DATA C3/100*(1.0,1.0)/,C4/100*(1.0,1.0)/
       DATA CD1/100*(1.0,1.0)/,CD2/100*(1.0,1.0)/
       DATA CD3/100*(1.0,1.0)/,CD4/100*(1.0,1.0)/
       DATA CQ1/100*(1.0,1.0)/,CQ2/100*(1.0,1.0)/
       DATA CQ3/100*(1.0,1.0)/,CQ4/100*(1.0,1.0)/
       END
