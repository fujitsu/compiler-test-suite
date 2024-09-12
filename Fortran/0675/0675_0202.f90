REAL*4 A(3),B(3),C(3),D(3),E(3),F(3),G(3),H(3),X(3)

k=2
l=3
m=4

DO i=1,3
  A(i)=i+1
  B(i)=i+2
  C(i)=LOG(A(i))
  D(i)=EXP(B(i))

  DO j=1,3
    E(j)=k**l
    F(j)=l**m
    G(j)=LOG(E(j)) 
    H(j)=LOG(F(j)) 
  ENDDO

  X(i)=LOG(A(i))+LOG(B(i))+LOG(D(i))+EXP(C(i))+EXP(E(i))+EXP(F(i))+k**l
ENDDO
WRITE(*,*)"A=",A
WRITE(*,*)"B=",B
WRITE(*,*)"C=",C
WRITE(*,*)"D=",D
WRITE(*,*)"E=",E
WRITE(*,*)"F=",F
WRITE(*,*)"G=",G
WRITE(*,*)"H=",H
WRITE(*,*)"X=",X

END
