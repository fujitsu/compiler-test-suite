REAL*8 A(11),B(11),C(10),D(10),E(10,10),F(10,10),G(10),H(10),X(10)

A=0
B=0
k=2
l=3
m=4

DO i=1,10
  A(i+1)=i+1
  B(i+1)=i+2
  C(i)=SIN(A(i+1))
  D(i)=SIN(B(i+1))

  DO j=1,10
    E(i,j)=k**l
    F(i,j)=l**m
    G(j)=SIN(E(i,j)) 
    H(j)=SIN(F(i,j)) 
  ENDDO

  X(i)=SIN(A(i+1))+SIN(B(i+1))+COS(C(i))+EXP(F(i,i))+EXP(E(i,i))+k**l
ENDDO
WRITE(*,*)"A=",A
WRITE(*,*)"B=",B
WRITE(*,*)"C=",C
WRITE(*,*)"D=",D
WRITE(*,*)"G=",G
WRITE(*,*)"H=",H
WRITE(*,*)"X=",X

END

