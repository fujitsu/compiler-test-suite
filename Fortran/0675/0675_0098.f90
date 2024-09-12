REAL*8 A(10),B(10),C(10),D(10),E(10),F(10),G(10),H(10),X(9)
k=2
m=4

DO i=1,10
  A(i)=i+1
  B(i)=i+2
  C(i)=EXP(A(i))
  D(i)=EXP(B(i))

  DO j=1,10
    E(j)=k**j
    F(j)=j**m
    G(j)=E(j)**j
    H(j)=F(j)**j
  ENDDO
  DO n=1,9
  X(n)=EXP(A(i))+EXP(B(i))+EXP(E(n))+k**n
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
