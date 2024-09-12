subroutine sub(a,b)
  complex(kind=4) a(0:7),b
  a(0) = b**(0.0_8,0.0_8)
  a(1) = b**(1.0_8,1.0_8)
  a(2) = b**(2.0_8,2.0_8)
  a(3) = b**(3.0_8,3.0_8)
  a(4) = b**(4.0_8,4.0_8)
  a(5) = b**(5.0_8,5.0_8)
  a(6) = b**(6.0_8,6.0_8)
  a(7) = b**(7.0_8,7.0_8)
end subroutine sub

program main
  complex(kind=4) a(0:7),b,c
  real(kind=4),parameter :: REAL_ANS=0.620377898_4
  real(kind=4),parameter :: IMAG_ANS=0.783784032_4
  real(kind=4),parameter :: REAL_ERROR=0.0000001_4
  real(kind=4),parameter :: IMAG_ERROR=0.0000001_4
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
  endif
end program main
