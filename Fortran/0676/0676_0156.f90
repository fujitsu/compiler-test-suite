subroutine sub(a,b,c,N)
complex(kind=4),dimension(1:N) :: a,b,c
a = a + b / c
end

program main
integer,parameter :: N=100
complex(kind=4),dimension(1:N) :: a,b,c
complex(kind=4) :: d
real(kind=4),parameter :: REAL_ANS=163.934372_4
real(kind=4),parameter :: IMAG_ANS=203.278717_4

a = cmplx(1.0,2.0)
b = cmplx(3.0,4.0)
c = cmplx(5.0,6.0)
call sub(a,b,c,N)
d = sum(a)
if ((((abs((real(d) - REAL_ANS)/real(d)))) <= 0.00001) .and. ((abs(aimag(d) - IMAG_ANS)/aimag(d)) <= 0.00001)) then
   print *,"*** ok ***"
else
   print *,"*** ng ***"
   print *,abs(real(d)),abs(aimag(d))
   print *,abs(real(d) - REAL_ANS),abs(aimag(d) - IMAG_ANS)
endif
end program