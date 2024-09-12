REAL*8 A(3),B(3),C(3),D(3),E(3),F(3),G(3),H(3),X(3),Y(3)

k=2
l=3

DO m=1,3

  DO i=1,3
    A(i)=i+1
    B(i)=i+2
    C(i)=SIN(A(i))
    D(i)=SIN(B(i))

    DO j=1,3
      E(j)=k**j
      F(j)=l**j
      G(j)=SIN(E(j)) 
      H(j)=SIN(F(j)) 
    ENDDO

    X(i)=SIN(A(i))+SIN(B(i))+COS(C(i))+EXP(D(i))+EXP(E(i))+k**l
  ENDDO
  Y=X
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
WRITE(*,*)"Y=",Y

END
