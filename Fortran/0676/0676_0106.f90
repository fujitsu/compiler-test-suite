subroutine sub(a,b)
  complex(kind=8) a(0:7),b
  a(0) = b**0.0_4
  a(1) = b**1.0_4
  a(2) = b**2.0_4
  a(3) = b**3.0_4
  a(4) = b**4.0_4
  a(5) = b**5.0_4
  a(6) = b**6.0_4
  a(7) = b**7.0_4
end subroutine sub

program main
  complex(kind=8) a(0:7),b,c
  real(kind=8),parameter :: REAL_ANS=1159.491379199999_8
  real(kind=8),parameter :: IMAG_ANS=887.3023487999994_8
  real(kind=8),parameter :: REAL_ERROR=2.273736754432321E-13_8
  real(kind=8),parameter :: IMAG_ERROR=2.273736754432321E-13_8
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