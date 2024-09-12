program main
  complex(kind=4) a(0:7),c
  real(kind=4),parameter :: REAL_ANS=0.620377898_4
  real(kind=4),parameter :: IMAG_ANS=0.783784032_4
  real(kind=4),parameter :: REAL_ERROR=0.0000001_4
  real(kind=4),parameter :: IMAG_ERROR=0.0000001_4
  
  c = (0.0_4,0.0_4)
  
  a(0) = (1.4_4,2.4_4) ** (0.0_8,0.0_8)
  a(1) = (1.4_4,2.4_4) ** (1.0_8,1.0_8)
  a(2) = (1.4_4,2.4_4) ** (2.0_8,2.0_8)
  a(3) = (1.4_4,2.4_4) ** (3.0_8,3.0_8)
  a(4) = (1.4_4,2.4_4) ** (4.0_8,4.0_8)
  a(5) = (1.4_4,2.4_4) ** (5.0_8,5.0_8)
  a(6) = (1.4_4,2.4_4) ** (6.0_8,6.0_8)
  a(7) = (1.4_4,2.4_4) ** (7.0_8,7.0_8)
  
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
