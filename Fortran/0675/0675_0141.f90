REAL*8 A(10),B(10),C(10),D(10),E(10),F(10),G(10),J(10),K(10)
DATA E/1,2,3,4,5,6,7,8,9,10/
DATA F/10,9,8,7,6,5,4,3,2,1/
DATA G/2,4,6,7,10,11,7,8,9,10/

DO i=1,10
 A(i)=EXP(E(i))
 B(i)=LOG(F(i))
 C(i)=SIN(G(i))
 J(i)=C(i)**10
 D(i)=COS(J(i))
ENDDO
WRITE(6,*)'A1=',A
WRITE(6,*)'B1=',B
WRITE(6,*)'C1=',C
WRITE(6,*)'J=',J
WRITE(6,*)'D1=',D

DO i=1,10
 A(i)=LOG(E(i))
 B(i)=COS(F(i))
 J(i)=B(i)**B(i)
 C(i)=EXP(G(i))
ENDDO
WRITE(6,*)'A2=',A
WRITE(6,*)'B2=',B
WRITE(6,*)'C2=',C

DO i=1,5
 A(i)=LOG(E(i))
 J(i)=A(i)**A(i)
 B(i)=SIN(F(i))
 C(i)=COS(G(i))
 D(i)=EXP(J(i))
 K(i)=LOG(D(i))
ENDDO
WRITE(6,*)'A3=',A
WRITE(6,*)'B3=',B
WRITE(6,*)'C3=',C
WRITE(6,*)'D3=',D
WRITE(6,*)'K=',K(1:5)

DO i=1,10
 A(i)=SIN(E(i))
 B(i)=COS(F(i))
 C(i)=EXP(G(i))
 J(i)=A(i)**B(i)
 D(i)=A(i)+B(i)+C(i)+J(i)
ENDDO
WRITE(6,*)'A4=',A
WRITE(6,*)'B4=',B
WRITE(6,*)'C4=',C
WRITE(6,*)'D4=',D

END
