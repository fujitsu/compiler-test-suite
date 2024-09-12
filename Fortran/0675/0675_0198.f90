REAL*8 E(3)
CALL SUB1
DO i=1,3
E(i)=fun(i)
ENDDO
WRITE(*,*)"A=",E
END

SUBROUTINE SUB1

REAL*8 A(3),E(3)
j=3

DO i=1,3
    E(i)=i**j

    A(i)=SIN(E(i))+SIN(E(i))+COS(E(i))+EXP(E(i))+EXP(E(i))+i*j
ENDDO

WRITE(*,*)"E=",E
WRITE(*,*)"A=",A

END

function fun(i)
integer i
REAL*8 A(3),E(3)
j=3
    E(i)=i**j
    A(i)=SIN(E(i))+SIN(E(i))+COS(E(i))+EXP(E(i))+EXP(E(i))+i*j
    WRITE(*,*)"A(",i,")=",A(i)
    fun=A(i)
end function fun

