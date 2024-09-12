CALL SUB1
END

SUBROUTINE SUB1

REAL*8 A(3),B(3),C(3),D(3),E(3),F(3),G(3)

DO i=1,3
  A(i)=i+1
  B(i)=i+2
  C(i)=SIN(A(i))
  D(i)=SIN(B(i))
  G(i)=fun(i)
ENDDO
E=C
F=D
WRITE(*,*)"A=",A
WRITE(*,*)"B=",B
WRITE(*,*)"C=",C
WRITE(*,*)"E=",E
WRITE(*,*)"D=",D
WRITE(*,*)"F=",F
WRITE(*,*)"G=",G

END

function fun(i)
integer i
REAL*8 A(3),C(3),D(3)
A(i)=i+1
C(i)=SIN(A(i))
D(i)=C(i)
fun=D(i)
END function fun

