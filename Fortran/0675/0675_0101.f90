REAL*8 A(10),B(10),C(10),D(10),E(10),F(10),G(10),H(10),X(9)

k=2
l=3
A=3
B=3
C=3
D=3
E=3
F=3
G=3
H=3
X=3

DO l=1,10
  DO i=1,10,2
    A(i)=i**2
    B(i)=i*3
  ENDDO
  
    DO j=1,10,2
      C(j)=EXP(A(j))
      D(j)=EXP(B(j))
      E(j)=EXP(A(j))
      F(j)=EXP(B(j))
      G(j)=E(j)*l
      H(j)=G(j)**2
    ENDDO

  DO n=1,9
    X(n)=EXP(A(n))+EXP(B(n))+k**n
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
