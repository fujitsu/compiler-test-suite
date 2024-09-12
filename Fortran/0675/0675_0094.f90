REAL*8 A(2,2),B(2,2),C(2,2),D(2,2),E(2,2),F(2,2),G(2,2),H(2,2),X(2,2)

k=2
l=3
m=4

DO i=1,2
    DO j=1,2
    A(i,j)=i+j+1
    B(i,j)=i+j+2
    C(i,j)=EXP(A(i,j))
    D(i,j)=EXP(B(i,j))
    E(i,j)=k**l
    F(i,j)=l**m
    G(i,j)=EXP(E(i,j)) 
    H(i,j)=EXP(F(i,j)) 
    X(i,j)=EXP(A(i,j))+EXP(B(i,j))+EXP(C(i,j))+EXP(F(i,j))+EXP(E(i,j))+k*l
  ENDDO
ENDDO
WRITE(*,*)"C=",C
WRITE(*,*)"D=",D
WRITE(*,*)"G=",G
WRITE(*,*)"H=",H
WRITE(*,*)"X=",X

END

