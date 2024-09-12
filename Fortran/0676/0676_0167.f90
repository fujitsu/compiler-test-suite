subroutine sub(a,b,f,N)
complex(kind=16),dimension(1:N) :: a,b
real(kind=16) :: f
a = a + b / cmplx(f, 0.0)
end

program main
integer,parameter :: N=100
complex(kind=16),dimension(1:N) :: a,b
complex(kind=16) :: d
real(kind=16) :: f
real(kind=16),parameter :: REAL_ANS=160.00000000000000000000000000000005_16
real(kind=16),parameter :: IMAG_ANS=279.99999999999999999999999999999990_16
real(kind=16),parameter :: REAL_ERROR=0.00000000000000000000000000000080_16
real(kind=16),parameter :: IMAG_ERROR=0.00000000000000000000000000000080_16

a = cmplx(1.0,2.0)
b = cmplx(3.0,4.0)
f = 5.0
call sub(a,b,f,N)
d = sum(a)
if (((abs(real(d)) - REAL_ANS) <= REAL_ERROR) .and. ((abs(aimag(d)) - IMAG_ANS) <= IMAG_ERROR)) then 
   print *,"*** ok ***"
else
   print *,"*** ng ***"
   print *,abs(real(d)),abs(aimag(d))
endif
end program
