program main
  complex(kind=4) a(0:7),c
  real(kind=4),parameter :: REAL_ANS=1159.49160_4
  real(kind=4),parameter :: IMAG_ANS=887.302500_4
  real(kind=4),parameter :: REAL_ERROR=0.00013_4
  real(kind=4),parameter :: IMAG_ERROR=0.00013_4

  c = (0.0_4,0.0_4)
  
  a(0) = (1.4_4,2.4_4) ** 0_4
  a(1) = (1.4_4,2.4_4) ** 1_4
  a(2) = (1.4_4,2.4_4) ** 2_4
  a(3) = (1.4_4,2.4_4) ** 3_4
  a(4) = (1.4_4,2.4_4) ** 4_4
  a(5) = (1.4_4,2.4_4) ** 5_4
  a(6) = (1.4_4,2.4_4) ** 6_4
  a(7) = (1.4_4,2.4_4) ** 7_4

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
