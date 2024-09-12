program main
  complex(kind=16) a(0:7),c
  real(kind=16),parameter :: REAL_ANS=0.62037806775306421312624352011267422_16
  real(kind=16),parameter :: IMAG_ANS=0.78378409006759787774927482037887443_16
  real(kind=16),parameter :: REAL_ERROR=0.00001_16
  real(kind=16),parameter :: IMAG_ERROR=0.00001_16
  
  c = (0.0_16,0.0_16)
  
  a(0) = (1.4_16,2.4_16) ** (0.0_16,0.0_16)
  a(1) = (1.4_16,2.4_16) ** (1.0_16,1.0_16)
  a(2) = (1.4_16,2.4_16) ** (2.0_16,2.0_16)
  a(3) = (1.4_16,2.4_16) ** (3.0_16,3.0_16)
  a(4) = (1.4_16,2.4_16) ** (4.0_16,4.0_16)
  a(5) = (1.4_16,2.4_16) ** (5.0_16,5.0_16)
  a(6) = (1.4_16,2.4_16) ** (6.0_16,6.0_16)
  a(7) = (1.4_16,2.4_16) ** (7.0_16,7.0_16)
  
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
