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
       DO 10 J=1,10
         A1=R1(1,J)*0.5
         A2=R2(2,J)*2.0
         A3=R3(3,J)*2.0
         A4=R4(4,J)*2.0
         A5=A1+A2+A3+A4
         DO 10 I=1,10
          A6=SIN(A1)
          A6=A6+R1(1,I)+R2(2,I)+R3(3,I)+R4(4,I)+A1+A2+A3+A4+R1(1,J)*2.0 
10     CONTINUE

       B5=0.
       B6=0.
       DO 20 J=1,10
         B1=D1(1,J)*2.0
         B2=D2(2,J)*2.0
         B3=D3(3,J)*2.0
         B4=D4(4,J)*0.5
         B5=B1+B2+B3+B4
           B4=SIN(B4)
         DO 20 I=1,10
           B6=D1(1,I)+D2(2,I)+D3(3,J)+D4(4,I)+B1+B2+B3+B4+D1(1,J)*2.0
20     CONTINUE

       CC5=0.
       CC6=0.
       DO 30 J=1,10
         CC1=Q1(1,J)*2.0
         CC2=Q2(2,J)*2.0
         CC3=Q3(3,J)*2.0
         CC4=Q4(4,J)*2.0
         CC5=CC1+CC2+CC3+CC4+CC6
         DO 30 I=1,10
           CC6=Q1(1,I)+Q2(2,I)+Q3(3,J)+Q4(4,I)+CC1+CC2+CC3+CC4
30     CONTINUE

       DD5=(1.0,1.0)
       DD6=(1.0,1.0)
       DO 40 J=1,10
         DD1=C1(1,J)*(2.0,1.0)
         DD2=C2(2,J)*(2.0,1.0)
         DD3=C3(3,J)*(2.0,1.0)
         DD4=C4(4,J)*(2.0,1.0)
         DD5=DD1+DD2+DD3+DD4+DD6
         DO 40 I=1,10
           IF(I.GT.J) DD1=SIN(DD2)+I
           DD6=C1(1,I)+C2(2,I)+C3(3,J)+C4(4,I)+DD1+DD2+DD3
40     CONTINUE

       ED5=(1.0,0.5)
       ED6=(1.0,2.0)
       DO 50 J=1,10
         ED1=CD1(1,J)*(2.0,1.0)
         ED2=CD2(2,J)*(2.0,1.0)
         ED3=CD3(3,J)*(2.0,1.0)
         ED4=CD4(4,J)*(2.0,1.0)
         ED5=ED1+ED2+ED3+ED4+ED6
           IF(6.GT.J) ED6=SIN(CD4(4,J))
         DO 50 I=1,10
           ED6=CD1(1,I)+CD2(2,I)+CD3(3,J)+CD4(4,I)+ED1+ED2+ED3
50     CONTINUE

       FD5=(0.0,0.0)
       FD6=(0.0,0.0)
       DO 60 J=1,10
         FD1=CQ1(1,J)*(2.0,1.0)
         FD2=CQ2(2,J)*(2.0,1.0)
         FD3=CQ3(3,J)*(2.0,1.0)
         FD4=CQ4(4,J)*(2.0,1.0)
         FD5=FD1+FD2+FD3+FD4+FD6
           IF(6.GT.J) CALL SUB(J**2)
         DO 60 I=1,10
           IF(6.GT.J) WRITE(6,*) I
           FD6=CQ1(1,I)+CQ2(2,I)+CQ3(3,J)+CQ4(4,I)+FD1+FD2+FD3
60     CONTINUE
       WRITE(6,*) A5,A6,B5,B6,CC5,CC6,DD5,DD6,ED5,ED6,FD5,FD6
       STOP
       END
       SUBROUTINE SUB(IA)
       RETURN
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
