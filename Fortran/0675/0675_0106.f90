REAL*4 A(3),B(3),C(3),D(3),E(3),F(3),G(3),H(3),X(3)

k=2
l=3
m=4

DO i=1,3
  A(i)=i+1
  B(i)=i+2
  C(i)=EXP(A(i))
  D(i)=EXP(B(i))

  DO j=1,3
    E(j)=k**l
    G(j)=EXP(E(j)) 
    F(j)=l**m
    H(j)=EXP(F(j)) 
  ENDDO

  X(i)=EXP(A(i))+EXP(B(i))+EXP(C(i))+EXP(F(i))+EXP(E(i))+k**l
ENDDO
WRITE(*,*)"C=",C
WRITE(*,*)"D=",D
WRITE(*,*)"G=",G
WRITE(*,*)"H=",H
WRITE(*,*)"X=",X

END
