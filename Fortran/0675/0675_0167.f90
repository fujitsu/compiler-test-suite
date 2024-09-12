REAL*8 A(10),B(10),C,D,M(10),J(10)
REAL*4 E(10),F(10),G,H,K(10),L(10)

DO i=1,10
G=i  
E(i)=SIN(G)
H=i+1   
F(i)=SIN(H)
ENDDO   
WRITE(6,*)'E=',E
WRITE(6,*)'F=',F

DO i=1,10
C=i
A(i)=SIN(C)
D=i+1
B(i)=SIN(D)
ENDDO
WRITE(6,*)'A=',A
WRITE(6,*)'B=',B

DO i=1,10
G=i    
E(i)=COS(G) 
H=i+1    
F(i)=COS(H) 
ENDDO   
WRITE(6,*)'E=',E 
WRITE(6,*)'F=',F 

DO i=1,10
C=i
A(i)=COS(C)
D=i+1
B(i)=COS(D)
ENDDO
WRITE(6,*)'A=',A
WRITE(6,*)'B=',B

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
G=i
E(i)=LOG(G)
H=i+1
F(i)=LOG(H)
ENDDO
WRITE(6,*)'E=',E
WRITE(6,*)'F=',F

DO i=1,10
C=i
A(i)=LOG(C)
D=i+1
B(i)=LOG(D)
ENDDO
WRITE(6,*)'A=',A
WRITE(6,*)'B=',B

DO i=1,10
C=i
A(i)=C**C
D=i+1
B(i)=D**D
ENDDO
WRITE(6,*)'A=',A
WRITE(6,*)'B=',B

DO i=1,10
G=i
E(i)=SIN(G)
F(i)=COS(G)
H=i+1
K(i)=SIN(H)
L(i)=COS(H)
ENDDO
WRITE(6,*)'E=',E
WRITE(6,*)'F=',F
WRITE(6,*)'K=',K
WRITE(6,*)'L=',L

DO i=1,10
C=i
A(i)=SIN(C)
B(i)=COS(C)
D=i+1
M(i)=SIN(D)
J(i)=COS(D)
ENDDO
WRITE(6,*)'A=',A
WRITE(6,*)'B=',B
WRITE(6,*)'M=',M
WRITE(6,*)'J=',J

DO i=1,10
M(i)=i
A(i)=SIN(M(i))
J(i)=i+1
B(i)=SIN(J(i))
ENDDO
WRITE(6,*)'A=',A
WRITE(6,*)'B=',B

DO i=1,10
M(i)=i
A(i)=COS(M(i))
J(i)=i+1
B(i)=COS(J(i))
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
K(i)=i
E(i)=LOG(K(i))
L(i)=i+1
F(i)=LOG(L(i))
ENDDO
WRITE(6,*)'E=',E
WRITE(6,*)'F=',F

DO i=1,10
M(i)=i
A(i)=LOG(M(i))
J(i)=i+1
B(i)=LOG(J(i))
ENDDO
WRITE(6,*)'A=',A
WRITE(6,*)'B=',B

DO i=1,10
M(i)=i
A(i)=M(i)**M(i)
J(i)=i+1
B(i)=J(i)**J(i)
ENDDO
WRITE(6,*)'A=',A
WRITE(6,*)'B=',B

DO i=1,10
A(i)=SIN(1.0_8+i)
B(i)=SIN(5.0_8+i)
ENDDO
WRITE(6,*)'A=',A
WRITE(6,*)'B=',B

DO i=1,10
A(i)=COS(1.0_8+i)
B(i)=COS(5.0_8+i)
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

DO i=1,10
E(i)=LOG(1.0_4+i)
F(i)=LOG(5.0_4+i)
ENDDO
WRITE(6,*)'E=',E
WRITE(6,*)'F=',F

DO i=1,10
M(i)=i
A(i)=LOG(1.0_8+i)
J(i)=i+1
B(i)=LOG(5.0_8+i)
ENDDO
WRITE(6,*)'A=',A
WRITE(6,*)'B=',B

DO i=1,10
A(i)=(2.0_8+i)**(3.0_8+i)
B(i)=(4.0_8+i)**(2.0_8+i)
ENDDO
WRITE(6,*)'A=',A
WRITE(6,*)'B=',B

END

