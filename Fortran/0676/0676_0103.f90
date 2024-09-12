subroutine sub(a,b)
  complex(kind=4) a(0:7),b
  a(0) = b**0_4
  a(1) = b**1_4
  a(2) = b**2_4
  a(3) = b**3_4
  a(4) = b**4_4
  a(5) = b**5_4
  a(6) = b**6_4
  a(7) = b**7_4
end subroutine sub

program main
  complex(kind=4) a(0:7),b,c
  real(kind=4),parameter :: REAL_ANS=1159.49160_4
  real(kind=4),parameter :: IMAG_ANS=887.302500_4
  real(kind=4),parameter :: REAL_ERROR=1.22070312E-04_4
  real(kind=4),parameter :: IMAG_ERROR=0.000062_4

  b = (1.4_4,2.4_4)
  call sub(a,b)
  c = (0.0_4,0.0_4)
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
