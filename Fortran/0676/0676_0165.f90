subroutine sub(a,b,N)
complex(kind=16),dimension(1:N) :: a,b
a = a + b / cmplx(5.0, 6.0)
end

program main
integer,parameter :: N=100
complex(kind=16),dimension(1:N) :: a,b
complex(kind=16) :: d
real(kind=16),parameter :: REAL_ANS=163.93442622950819672131147540983612_16
real(kind=16),parameter :: IMAG_ANS=203.27868852459016393442622950819682_16
real(kind=16),parameter :: REAL_ERROR=0.00000000000000000000000000000020_16
real(kind=16),parameter :: IMAG_ERROR=0.00000000000000000000000000000020_16

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
