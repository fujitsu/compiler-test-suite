subroutine sub(a,b,N)
complex(kind=8),dimension(1:N) :: a,b
a = a + b / cmplx(5.0, 6.0)
end

program main
integer,parameter :: N=100
complex(kind=8),dimension(1:N) :: a,b
complex(kind=8) :: d
real(kind=8),parameter :: REAL_ANS=163.9344262295083_8
real(kind=8),parameter :: IMAG_ANS=203.2786885245903_8

a = cmplx(1.0,2.0)
b = cmplx(3.0,4.0)
call sub(a,b,N)
d = sum(a)
if ((((abs((real(d) - REAL_ANS)/real(d)))) <= 0.00001) .and. ((abs(aimag(d) - IMAG_ANS)/aimag(d)) <= 0.00001)) then
   print *,"*** ok ***"
else
   print *,"*** ng ***"
   print *,abs(real(d)),abs(aimag(d))
   print *,abs(real(d) - REAL_ANS),abs(aimag(d) - IMAG_ANS)
endif
end program
