program main
  complex(kind=8) a(0:7),c
  real(kind=8),parameter :: REAL_ANS=0.6203780677530639_8
  real(kind=8),parameter :: IMAG_ANS=0.7837840900675967_8

  real(kind=8),parameter :: REAL_ERROR=7.771561172376096E-16_8
  real(kind=8),parameter :: IMAG_ERROR=2.220446049250313E-16_8
  
  c = (0.0_8,0.0_8)
  
  a(0) = (1.4_8,2.4_8) ** (0.0_4,0.0_4)
  a(1) = (1.4_8,2.4_8) ** (1.0_4,1.0_4)
  a(2) = (1.4_8,2.4_8) ** (2.0_4,2.0_4)
  a(3) = (1.4_8,2.4_8) ** (3.0_4,3.0_4)
  a(4) = (1.4_8,2.4_8) ** (4.0_4,4.0_4)
  a(5) = (1.4_8,2.4_8) ** (5.0_4,5.0_4)
  a(6) = (1.4_8,2.4_8) ** (6.0_4,6.0_4)
  a(7) = (1.4_8,2.4_8) ** (7.0_4,7.0_4)
  
  do i=0,7
     c = c + a(i)
  enddo

  if ((abs(real(c)  - REAL_ANS) <= REAL_ERROR) .and. &
       (abs(aimag(c) - IMAG_ANS) <= IMAG_ERROR)) then
     print *,"ok"
  else
     print *,"ng"
     print *,"real: ", abs(real(c) - REAL_ANS)
     print *,"imag: ", abs(aimag(c) - IMAG_ANS)
  endif
end program main
