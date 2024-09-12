INTEGER*4 A(10),B(10),C(10),D(10),E(10,10),F(10,10),G(10,10)

DO i=1,10

  DO j=1,10
  A(j)=i**j
  B(j)=j**i
  C(j)=A(j)**2
  D(j)=B(j)**2

    DO n=1,10
    E(i,n)=n**i
    F(i,n)=i**n
    G(i,n)=F(i,n)**2
    ENDDO

  ENDDO

ENDDO
WRITE(*,*)"A=",A
WRITE(*,*)"B=",B
WRITE(*,*)"C=",C
WRITE(*,*)"D=",D
WRITE(*,*)"E=",E
WRITE(*,*)"F=",F
WRITE(*,*)"G=",G

END

