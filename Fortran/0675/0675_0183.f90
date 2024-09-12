REAL*8 A(10),B(12),C(10),D(10),E(10,10),F(10,10),G(11),H(11),X(10),Y(10),Z(10)
REAL*8 A1(10),B1(12),C1(10),D1(10),E1(10,10),F1(10,10),G1(11),H1(11),X1(10),Y1(10),Z1(10)

k=2
l=3
B=1
G=1
H=1

DO i=1,10

  DO j=1,10
  A(j)=i+1
  B(j+2)=i+2
  C(j)=SIN(A(i))
  D(j)=COS(B(i))

    DO n=1,10
    E(i,n)=n**l
    F(i,n)=l**n
    G(n+1)=LOG(E(i,n)) 
    H(n+1)=LOG(F(i,n)) 
    ENDDO

  ENDDO
  X(i)=SIN(A(i))+SIN(B(i))+COS(C(i))+EXP(F(1,2))+EXP(E(1,2))+k**l
  Y(i)=SIN(B(i))
  Z(i)=COS(A(i))

ENDDO
WRITE(*,*)"C=",C
WRITE(*,*)"D=",D
WRITE(*,*)"G=",G
WRITE(*,*)"H=",H
WRITE(*,*)"X=",X
WRITE(*,*)"Y=",Y
WRITE(*,*)"Z=",Z

k=2
l=3
B1=1
G1=1
H1=1
DO i=1,10

  DO j=1,10
  A1(j)=i+1
  B1(j+2)=i+2
  C1(j)=SIN(A1(i))
  D1(j)=COS(B1(i))

    DO n=1,10
    E1(i,n)=n**l
    F1(i,n)=l**n
    G1(n+1)=LOG(E1(i,n)) 
    H1(n+1)=LOG(F1(i,n)) 
    ENDDO

  ENDDO
  X1(i)=SIN(A1(i))+SIN(B1(i))+COS(C1(i))+EXP(F1(1,2))+EXP(E1(1,2))+k**l
  Y1(i)=SIN(B1(i))
  Z1(i)=COS(A1(i))

ENDDO
WRITE(*,*)"C1=",C1
WRITE(*,*)"D1=",D1
WRITE(*,*)"G1=",G1
WRITE(*,*)"H1=",H1
WRITE(*,*)"X1=",X1
WRITE(*,*)"Y1=",Y1
WRITE(*,*)"Z1=",Z1

END

