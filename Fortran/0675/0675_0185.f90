REAL*8 A(11),B(11),C(11),D(11),E(10),F(10),G(10),H(10),X(9)

k=2
l=3
m=4
A=2
B=2
C=2
D=2

DO l=1,10
  DO i=1,10
    A(i)=i+1
    B(i)=i+2
    C(i)=SIN(A(i))
    D(i)=SIN(B(i))
  ENDDO

  DO j=1,10
    E(j)=k**j
    F(j)=j**m
    G(j)=E(j)**j
    H(j)=F(j)**j
  ENDDO

  DO n=1,9
  X(n)=SIN(A(n))+SIN(B(n))+COS(C(n))+EXP(D(n))+EXP(E(n))+k**n
  END DO

i=i+1
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