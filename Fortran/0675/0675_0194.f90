REAL*8 E(3)
CALL SUB1
DO i=1,3
E(i)=fun(i)
ENDDO
WRITE(*,*)"A=",E
END

SUBROUTINE SUB1

REAL*8 A(3),B(3),C(3),D(3),E(3),F(3)
j=3
DO i=1,3
    E(i)=i**j
    B(i)=i+j
    C(i)=i*j
    D(i)=i+i
    F(i)=j+j
    A(i)=SIN(B(i))+SIN(C(i))+COS(D(i))+EXP(E(i))+EXP(F(i))+i**j
ENDDO

WRITE(*,*)"A=",A

END

function fun(i)
integer i
REAL*8 A(3),B(3),C(3),D(3),E(3),F(3)
j=3
    E(i)=i**j
    B(i)=i+j
    C(i)=i*j
    D(i)=i+i
    F(i)=j+j
    A(i)=SIN(B(i))+SIN(C(i))+COS(D(i))+EXP(E(i))+EXP(F(i))+i**j
    fun=A(i)
end function fun

