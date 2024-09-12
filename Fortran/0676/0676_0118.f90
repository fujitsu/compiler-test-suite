program main
  complex(kind=8) a(0:7),c
  real(kind=8),parameter :: REAL_ANS=1159.491379199999_8
  real(kind=8),parameter :: IMAG_ANS=887.3023487999994_8
  real(kind=8),parameter :: REAL_ERROR=2.273736754432321E-13_8
  real(kind=8),parameter :: IMAG_ERROR=2.273736754432321E-13_8

  c = (0.0_8,0.0_8)
  
  a(0) = (1.4_8,2.4_8) ** 0.0_4
  a(1) = (1.4_8,2.4_8) ** 1.0_4
  a(2) = (1.4_8,2.4_8) ** 2.0_4
  a(3) = (1.4_8,2.4_8) ** 3.0_4
  a(4) = (1.4_8,2.4_8) ** 4.0_4
  a(5) = (1.4_8,2.4_8) ** 5.0_4
  a(6) = (1.4_8,2.4_8) ** 6.0_4
  a(7) = (1.4_8,2.4_8) ** 7.0_4

  do i=0,7
     c = c + a(i)
  enddo
  if ((abs(real(c)  - REAL_ANS) <= REAL_ERROR) .and. &
       (abs(aimag(c) - IMAG_ANS) <= IMAG_ERROR)) then
     print *,"ok"
  else
     print *,"ng", c
     print *,abs(real(c)  - REAL_ANS),abs(aimag(c) - IMAG_ANS)
  endif
end program main
