REAL*8 A(10),B(10),C,D,M(10),J(10)
REAL*4 E(10),F(10),G,H,K(10),L(10)

DO i=1,10
G=i
E(i)=EXP(G)
H=i+1
F(i)=EXP(H)
ENDDO
WRITE(6,*)'E=',E
WRITE(6,*)'F=',F

DO i=1,10
C=i
A(i)=EXP(C)
D=i+1
B(i)=EXP(D)
ENDDO
WRITE(6,*)'A=',A
WRITE(6,*)'B=',B

DO i=1,10
K(i)=i
E(i)=EXP(K(i))
L(i)=i+1
F(i)=EXP(L(i))
ENDDO
WRITE(6,*)'E=',E
WRITE(6,*)'F=',F

DO i=1,10
M(i)=i
A(i)=EXP(M(i))
J(i)=i+1
B(i)=EXP(J(i))
ENDDO
WRITE(6,*)'A=',A
WRITE(6,*)'B=',B

DO i=1,10
E(i)=EXP(1.0_4+i)
F(i)=EXP(5.0_4+i)
ENDDO
WRITE(6,*)'E=',E
WRITE(6,*)'F=',F

DO i=1,10
A(i)=EXP(1.0_8+i)
B(i)=EXP(5.0_8+i)
ENDDO
WRITE(6,*)'A=',A
WRITE(6,*)'B=',B

END
