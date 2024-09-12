subroutine sub(a,b)
  complex(kind=8) a(0:7),b
  a(0) = b**(0.0_16,0.0_16)
  a(1) = b**(1.0_16,1.0_16)
  a(2) = b**(2.0_16,2.0_16)
  a(3) = b**(3.0_16,3.0_16)
  a(4) = b**(4.0_16,4.0_16)
  a(5) = b**(5.0_16,5.0_16)
  a(6) = b**(6.0_16,6.0_16)
  a(7) = b**(7.0_16,7.0_16)
end subroutine sub

program main
  complex(kind=8) a(0:7),b,c
  real(kind=8),parameter :: REAL_ANS=0.6203780677530643_8
  real(kind=8),parameter :: IMAG_ANS=0.7837840900675977_8
  real(kind=8),parameter :: REAL_ERROR=0.0_8
  real(kind=8),parameter :: IMAG_ERROR=0.0_8
  b = (1.4_8,2.4_8)
  call sub(a,b)
  c = (0.0_8,0.0_8)
  do i=0,7
     c = c + a(i)
  enddo
  if ((abs(real(c)  - REAL_ANS) <= REAL_ERROR) .and. &
       (abs(aimag(c) - IMAG_ANS) <= IMAG_ERROR)) then
     print *,"ok"
  else
     print *,"ng", c
     print *,abs(real(c)  - REAL_ANS)
     print *,abs(aimag(c) - IMAG_ANS)
  endif
end program main
