program main
  complex(kind=8) a(0:7),c
  real(kind=8),parameter :: REAL_ANS=1159.491379200000_8
  real(kind=8),parameter :: IMAG_ANS=887.3023487999999_8
  real(kind=8),parameter :: REAL_ERROR=4.547473508864641E-13_8
  real(kind=8),parameter :: IMAG_ERROR=1.136868377216161E-13_8

  c = (0.0_8,0.0_8)

  a(0) = (1.4_8,2.4_8) ** 0.0_16
  a(1) = (1.4_8,2.4_8) ** 1.0_16
  a(2) = (1.4_8,2.4_8) ** 2.0_16
  a(3) = (1.4_8,2.4_8) ** 3.0_16
  a(4) = (1.4_8,2.4_8) ** 4.0_16
  a(5) = (1.4_8,2.4_8) ** 5.0_16
  a(6) = (1.4_8,2.4_8) ** 6.0_16
  a(7) = (1.4_8,2.4_8) ** 7.0_16
  
  do i=0,7
     c = c + a(i)
  enddo
  if ((abs(real(c)  - REAL_ANS) <= REAL_ERROR) .and. &
       (abs(aimag(c) - IMAG_ANS) <= IMAG_ERROR)) then
     print *,"ok"
  else
     print *,"ng",c,abs(real(c)  - REAL_ANS),abs(aimag(c) - IMAG_ANS)
  endif
end program main
