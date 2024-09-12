REAL*8 A(10),B(10),C(10),D(10),E(10),F(10),G(10)
DATA G/1,2,3,4,5,6,7,8,9,10/
DATA C/1,2,3,4,5,6,7,8,9,10/
DO i=1,10
B(i)=i
F(i)=i+1
A(i)=SIN(B(i))
E(i)=SIN(F(i))
ENDDO
D=sin(C)+sin(G)
write(6,*)'A=',A
write(6,*)'E=',E
write(6,*)'D=',D
END
