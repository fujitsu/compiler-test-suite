subroutine sub(a,b,d,e,f,g,h,i,j,k)
  complex(kind=16) a(0:7),b
  integer(kind=4) d,e,f,g,h,i,j,k
  a(0) = b**d
  a(1) = b**e
  a(2) = b**f
  a(3) = b**g
  a(4) = b**h
  a(5) = b**i
  a(6) = b**j
  a(7) = b**k
end subroutine sub

program main
  complex(kind=16) a(0:7),b,c
  real(kind=16),parameter :: REAL_ANS=1159.4913791999999999999999999999999_16
  real(kind=16),parameter :: IMAG_ANS=887.30234879999999999999999999999993_16
  real(kind=16),parameter :: REAL_ERROR=0.000000002_16
  real(kind=16),parameter :: IMAG_ERROR=0.000000002_16

  integer(kind=4) d,e,f,g,h,i,j,k
  
  b = (1.4_16,2.4_16)
  d = 0_4
  e = 1_4
  f = 2_4
  g = 3_4
  h = 4_4
  i = 5_4
  j = 6_4
  k = 7_4

  call sub(a,b,d,e,f,g,h,i,j,k)
  c = (0.0_16,0.0_16)
  do l=0,7
     c = c + a(l)
  enddo

  if ((abs(real(c)  - REAL_ANS) <= REAL_ERROR) .and. &
       (abs(aimag(c) - IMAG_ANS) <= IMAG_ERROR)) then
     print *,"ok"
  else
     print *,"ng", c
  endif
end program main
