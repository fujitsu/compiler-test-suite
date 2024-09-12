REAL*8 E(3)
CALL SUB1
DO i=1,3
E(i)=fun(i)
ENDDO
WRITE(*,*)"G+H=",E
END

SUBROUTINE SUB1

REAL*8 E(3),F(3),G(3),H(3)
k=2
l=3

DO j=1,3
    E(j)=k**j
    F(j)=l**j
    G(j)=SIN(E(j)) 
    H(j)=SIN(F(j)) 
ENDDO

WRITE(*,*)"A=",E
WRITE(*,*)"B=",F
WRITE(*,*)"G=",G
WRITE(*,*)"H=",H

END

function fun(i)
integer i
REAL*8 E(3),F(3),G(3),H(3)
    E(i)=2**i
    F(i)=3**i
    G(i)=SIN(E(i)) 
    H(i)=SIN(F(i)) 
  fun=G(i)+H(i)
end function fun

