REAL*8 A(10),B(11),C(10),D(10),E(10,10),F(10,10),G(11),H(11),X(10),Y(10),Z(10)

k=2
l=3
B=0
G=0
H=0

DO i=1,10

  DO j=1,10
  A(j)=i+1
  B(j+1)=i+2
  C(j)=SIN(A(j))
  D(j)=COS(B(j))

    DO n=1,10
    E(i,n)=n**l
    F(i,n)=l**n
    G(n+1)=LOG(E(i,n)) 
    H(n+1)=LOG(F(i,n)) 
    ENDDO

  ENDDO
  X(i)=SIN(A(i))+SIN(B(i))+COS(C(i))+SIN(F(i,j-1))+COS(E(i,j-1))+k**l
  Y(i)=SIN(B(i+1))
  Z(i)=COS(A(i))

ENDDO
WRITE(*,*)"C=",C
WRITE(*,*)"D=",D
WRITE(*,*)"G=",G
WRITE(*,*)"H=",H
WRITE(*,*)"X=",X
WRITE(*,*)"Y=",Y
WRITE(*,*)"Z=",Z

END

