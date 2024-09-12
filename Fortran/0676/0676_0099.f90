program main
  complex(kind=8) a(0:7),c
  real(kind=8),parameter :: REAL_ANS=0.6203780677530643_8
  real(kind=8),parameter :: IMAG_ANS=0.7837840900675977_8
  real(kind=8),parameter :: REAL_ERROR=0.0_8
  real(kind=8),parameter :: IMAG_ERROR=0.0_8
  
  c = (0.0_8,0.0_8)
  
  a(0) = (1.4_8,2.4_8) ** (0.0_16,0.0_16)
  a(1) = (1.4_8,2.4_8) ** (1.0_16,1.0_16)
  a(2) = (1.4_8,2.4_8) ** (2.0_16,2.0_16)
  a(3) = (1.4_8,2.4_8) ** (3.0_16,3.0_16)
  a(4) = (1.4_8,2.4_8) ** (4.0_16,4.0_16)
  a(5) = (1.4_8,2.4_8) ** (5.0_16,5.0_16)
  a(6) = (1.4_8,2.4_8) ** (6.0_16,6.0_16)
  a(7) = (1.4_8,2.4_8) ** (7.0_16,7.0_16)
  
  do i=0,7
     c = c + a(i)
  enddo

  if ((abs(real(c)  - REAL_ANS) <= REAL_ERROR) .and. &
       (abs(aimag(c) - IMAG_ANS) <= IMAG_ERROR)) then
     print *,"ok"
  else
     print *,"ng", c
  endif
end program main
