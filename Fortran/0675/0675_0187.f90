REAL*8 A(11),B(11),C(11),D(11),E(10),F(10),G(10),H(10),X(9)

k=2
l=3
m=4
A=4
B=4
C=4
D=4

DO l=1,10

  DO i=1,10
    A(i)=i+1
    B(i)=i+2
  ENDDO
  
    DO j=1,10
      C(j)=EXP(A(j))
      D(j)=EXP(B(j))
      E(j)=k**j
      F(j)=j**m
      G(j)=E(j)**j
      H(j)=F(j)**j
    ENDDO

  DO n=1,9
    X(n)=COS(A(i))+COS(B(i))+COS(C(i))+COS(D(i))+COS(E(n))+k**n
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
