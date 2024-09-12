REAL*8 E(3)
CALL SUB1
DO i=1,3
E(i)=fun(i)
ENDDO
WRITE(*,*)"C+D=",E
END

SUBROUTINE SUB1

REAL*8 A(3),B(3),C(3),D(3)

DO i=1,3
  A(i)=i+1
  B(i)=i+2
  C(i)=EXP(A(i))
  D(i)=EXP(B(i))
ENDDO

WRITE(*,*)"A=",A
WRITE(*,*)"B=",B
WRITE(*,*)"C=",C
WRITE(*,*)"D=",D

END

function fun(i)
integer i
  A(i)=i+1
  B(i)=i+2
  C(i)=EXP(A(i))
  D(i)=EXP(B(i))
  fun=C(i)+D(i)
end function fun

