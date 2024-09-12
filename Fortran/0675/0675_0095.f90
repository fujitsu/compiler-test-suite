REAL*8 A(10),B(10),C(10),D(10),E(10,10),F(10,10),G(10),H(10)
INTEGER o

k=2
l=3
m=4

DO i=1,10

  DO j=1,10
  A(i)=i+1
  B(i)=i+2
  C(i)=EXP(A(i))
  D(i)=EXP(B(i))

    DO n=1,10
    E(n,i)=k**l
    F(n,i)=l**m
      DO o=1,10
        G(o)=EXP(E(n,i)) 
      ENDDO

    H(n)=EXP(F(n,i)) 
    ENDDO

  ENDDO

ENDDO
WRITE(*,*)"C=",C
WRITE(*,*)"D=",D
WRITE(*,*)"G=",G
WRITE(*,*)"H=",H

END

