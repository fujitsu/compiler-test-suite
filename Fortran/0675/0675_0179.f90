REAL*8 A(10),B(10),C(10),D(10),E(10,10),F(10,10),G(10),H(10),X(10),Y(10),Z(10)
INTEGER o

k=2
l=3
m=4

DO i=1,10

  DO j=1,10
  A(i)=i+1
  B(i)=i+2
  C(i)=SIN(A(i))
  D(i)=COS(B(i))

    DO n=1,10
    E(n,i)=k**l
    F(n,i)=l**m
      DO o=1,10
        G(o)=EXP(E(n,i)) 
      ENDDO

    H(n)=LOG(F(n,i)) 
    ENDDO

  ENDDO
  X(i)=SIN(A(i))+SIN(B(i))+COS(C(i))+EXP(E(i,i))+k**l
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

END

