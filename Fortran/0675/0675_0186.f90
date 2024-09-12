REAL*8 A(10),B(10),C(10),D(10),E(10),F(10),G(10),H(10),X(9)
INTEGER*4 o

k=2
l=3
m=4

DO l=1,10

  DO i=1,10
    A(i)=i+1
    B(i)=i+2
  ENDDO

  DO o=1,10
    C(o)=EXP(A(i-1))
    D(o)=EXP(B(i-1))

    DO j=1,10
      E(j)=k**j
      F(j)=j**m
      G(j)=E(j)**j
      H(j)=F(j)**j
    ENDDO

  ENDDO

  DO n=1,9
    X(n)=SIN(A(n))+SIN(B(n))+LOG(C(i-1))+LOG(D(i-1))+LOG(E(j-1))+k**n
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
