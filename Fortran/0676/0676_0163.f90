subroutine sub(a,b,f,N)
complex(kind=8),dimension(1:N) :: a,b
real(kind=8) :: f
a = a + b / cmplx(f, 0.0)
end

program main
integer,parameter :: N=100
complex(kind=8),dimension(1:N) :: a,b
complex(kind=8) :: d
real(kind=8) :: f
real(kind=8),parameter :: REAL_ANS=160.0000000000001_8
real(kind=8),parameter :: IMAG_ANS=279.9999999999999_8
real(kind=8),parameter :: REAL_ERROR=4.263256414560601E-13_8
real(kind=8),parameter :: IMAG_ERROR=6.252776074688882E-13_8

a = cmplx(1.0,2.0)
b = cmplx(3.0,4.0)
f = 5.0
call sub(a,b,f,N)
d = sum(a)
if ((abs(real(d) - REAL_ANS) <= REAL_ERROR) .and. (abs(aimag(d) - IMAG_ANS) <= IMAG_ERROR)) then 
   print *,"*** ok ***"
else
   print *,"*** ng ***"
   print *,abs(real(d)),abs(aimag(d))
   print *,abs(real(d) - REAL_ANS),abs(aimag(d) - IMAG_ANS)
endif
end program
