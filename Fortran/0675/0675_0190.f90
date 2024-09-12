REAL*8 A(10),B(10),C(10),D(10),E(10),F(10),G(10),H(10),X(9)

k=2
l=3
m=4
A=5
B=5
C=5
D=5
E=5
F=5
G=5
H=5
X=5

DO l=1,10
  DO i=1,10,2
    A(i)=i+1
    B(i)=i+2
  ENDDO
  
    DO j=1,10,2
      C(j)=EXP(A(j))
      D(j)=EXP(B(j))
      E(j)=k**j
      F(j)=j**m
      G(j)=E(j)**j
      H(j)=F(j)**j
    ENDDO

  DO n=1,9,2
    X(n)=COS(A(n))+COS(B(n))+COS(C(n))+COS(D(n))+COS(E(n))+k**n
  END DO

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
