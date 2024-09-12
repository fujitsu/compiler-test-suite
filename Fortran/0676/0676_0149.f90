program main
  complex(kind=16) a(0:7),c
  real(kind=16),parameter :: REAL_ANS=1159.4913791999999999999999999999987_16
  real(kind=16),parameter :: IMAG_ANS=887.30234879999999999999999999999954_16
  real(kind=16),parameter :: REAL_ERROR=0.00001_16
  real(kind=16),parameter :: IMAG_ERROR=0.00001_16

  c = (0.0_16,0.0_16)

  a(0) = (1.4_16,2.4_16) ** 0.0_8
  a(1) = (1.4_16,2.4_16) ** 1.0_8
  a(2) = (1.4_16,2.4_16) ** 2.0_8
  a(3) = (1.4_16,2.4_16) ** 3.0_8
  a(4) = (1.4_16,2.4_16) ** 4.0_8
  a(5) = (1.4_16,2.4_16) ** 5.0_8
  a(6) = (1.4_16,2.4_16) ** 6.0_8
  a(7) = (1.4_16,2.4_16) ** 7.0_8
  
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
