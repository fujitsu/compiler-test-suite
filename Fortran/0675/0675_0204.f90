REAL*8 A(3),B(3),C(3),D(3),E(3,3),F(3,3),G(3),H(3),X(3)

k=2
l=3
m=4

DO i=1,3
  A(i)=i+1
  B(i)=i+2
  C(i)=SIN(A(i))
  D(i)=SIN(B(i))

  DO j=1,3
    E(i,j)=k**l
    F(i,j)=l**m
    G(j)=SIN(E(i,j)) 
    H(j)=SIN(F(i,j)) 
  ENDDO

  X(i)=SIN(A(i))+SIN(B(i))+COS(C(i))+EXP(F(i,j-1))+EXP(E(i,j-1))+k**l
ENDDO
WRITE(*,*)"A=",A
WRITE(*,*)"B=",B
WRITE(*,*)"C=",C
WRITE(*,*)"D=",D
WRITE(*,*)"G=",G
WRITE(*,*)"H=",H
WRITE(*,*)"X=",X

END

