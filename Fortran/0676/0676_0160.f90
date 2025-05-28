subroutine sub(a,b,c,N)
complex(kind=8),dimension(1:N) :: a,b,c
a = a + b / c
end

program main
integer,parameter :: N=100
complex(kind=8),dimension(1:N) :: a,b,c
complex(kind=8) :: d
real(kind=8),parameter :: REAL_ANS=163.9344262295083_8
real(kind=8),parameter :: IMAG_ANS=203.27868852458974_8
real(kind=8),parameter :: REAL_ERROR=8.526512829121203E-14_8
real(kind=8),parameter :: IMAG_ERROR=1.989519660128281E-13_8

a = cmplx(1.0,2.0)
b = cmplx(3.0,4.0)
c = cmplx(5.0,6.0)
call sub(a,b,c,N)
d = sum(a)
if ((abs(real(d) - REAL_ANS) <= REAL_ERROR) .and. (abs(aimag(d) - IMAG_ANS) >= IMAG_ERROR)) then 
   print *,"*** ok ***"
else
   print *,"*** ng ***"
   print *,abs(real(d)),abs(aimag(d))
   print *,abs(real(d) - REAL_ANS),abs(aimag(d) - IMAG_ANS)
endif
end program
