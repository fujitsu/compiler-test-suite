REAL*8 A(3),B(3),C(3),D(3),E(3),F(3),G(3),H(3)
REAL*8 X(3)

k=2
l=3
m=4

DO i=1,3
  A(i)=i+1
  B(i)=i+2
  C(i)=SIN(A(i))
  D(i)=SIN(B(i))

  DO j=1,3
    E(j)=k**l
    F(j)=l**m
    G(j)=COS(E(j)) 
    H(j)=COS(F(j)) 
  ENDDO

  X(i)=LOG(A(i))+LOG(B(i))+EXP(D(i))+EXP(C(i))+EXP(E(i))+LOG(F(i))+k**l
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
