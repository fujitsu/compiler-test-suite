REAL*8 A(11),B(11),C(11),D(11),E(11),F(11),G(11),H(11),X(9)

k=2
l=3
A=1
B=1
C=1
D=1
E=1
F=1
G=1
H=1

DO l=1,10

  DO i=1,10
    A(i)=i+1
    B(i)=i+2
  ENDDO
  
    DO j=1,10
      C(j)=COS(A(j))
      D(j)=COS(B(j))
      E(j)=SIN(A(j))
      F(j)=SIN(B(j))
      G(j)=E(j)**2
      H(j)=G(j)**2
    ENDDO

  DO n=1,9
    X(n)=COS(A(i))+COS(B(i))+COS(C(i))+COS(D(i))+COS(E(n))+k**n
  END DO

i=i+1
j=j+1
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
