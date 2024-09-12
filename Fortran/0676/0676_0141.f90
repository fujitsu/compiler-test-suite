subroutine sub(a,b,d,e,f,g,h,i,j,k)
  complex(kind=16) a(0:7),b
  real(kind=16) d,e,f,g,h,i,j,k
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
  real(kind=16),parameter :: REAL_ANS=1159.4913791999999999999999999999987_16
  real(kind=16),parameter :: IMAG_ANS=887.30234879999999999999999999999954_16
  real(kind=16),parameter :: REAL_ERROR=0.00001
  real(kind=16),parameter :: IMAG_ERROR=0.00001

  real(kind=16) d,e,f,g,h,i,j,k
  
  b = (1.4_16,2.4_16)
  d = 0.0_16
  e = 1.0_16
  f = 2.0_16
  g = 3.0_16
  h = 4.0_16
  i = 5.0_16
  j = 6.0_16
  k = 7.0_16

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
     print *,abs(real(c)  - REAL_ANS),abs(aimag(c) - IMAG_ANS)
  endif
end program main
