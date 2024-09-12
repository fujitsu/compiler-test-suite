subroutine sub(a,b,d,e,f,g,h,i,j,k)
  complex(kind=4) a(0:7),b
  integer(kind=8) d,e,f,g,h,i,j,k
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
  complex(kind=4) a(0:7),b,c
  real(kind=4),parameter :: REAL_ANS=1159.49146_4
  real(kind=4),parameter :: IMAG_ANS=887.302673_4

  real(kind=4),parameter :: REAL_ERROR=0.00001
  real(kind=4),parameter :: IMAG_ERROR=0.00001

  integer(kind=8) d,e,f,g,h,i,j,k
  
  b = (1.4_4,2.4_4)
  d = 0_8
  e = 1_8
  f = 2_8
  g = 3_8
  h = 4_8
  i = 5_8
  j = 6_8
  k = 7_8

  call sub(a,b,d,e,f,g,h,i,j,k)
  c = (0.0_4,0.0_4)
  do l=0,7
     c = c + a(l)
  enddo

  if ((abs((real(c)  - REAL_ANS)/real(c)) <= REAL_ERROR) .and. &
       (abs((aimag(c) - IMAG_ANS)/real(c)) <= IMAG_ERROR)) then
     print *,"ok"
  else
     print *,"ng", c
  endif
end program main