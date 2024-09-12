subroutine sub(a,b,N)
complex(kind=4),dimension(1:N) :: a,b
a = a + b / cmplx(5.0, 6.0)
end

program main
integer,parameter :: N=100
complex(kind=4),dimension(1:N) :: a,b
complex(kind=4) :: d
real(kind=4),parameter :: REAL_ANS=163.934372_4
real(kind=4),parameter :: IMAG_ANS=203.2787174_4
real(kind=4),parameter :: REAL_ERROR=0.002_4
real(kind=4),parameter :: IMAG_ERROR=0.002_4

a = cmplx(1.0,2.0)
b = cmplx(3.0,4.0)
call sub(a,b,N)
d = sum(a)
if (((abs(real(d)) - REAL_ANS) <= REAL_ERROR) .and. ((abs(aimag(d)) - IMAG_ANS) <= IMAG_ERROR)) then 
   print *,"*** ok ***"
else
   print *,"*** ng ***"
   print *,abs(real(d)),abs(aimag(d))
endif
end program
