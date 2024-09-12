REAL*8 A(10),B(10),C,D
REAL*4 E(10),F(10),G,H

DO i=1,10
C=i
A(i)=EXP(C)
D=i+1
B(i)=EXP(D)
G=i+2
E(i)=EXP(G)
H=i+3
F(i)=EXP(H)
ENDDO
WRITE(6,*)'A=',A
WRITE(6,*)'B=',B
WRITE(6,*)'E=',E
WRITE(6,*)'F=',F

END
