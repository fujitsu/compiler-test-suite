subroutine sub(a,b,d,e,f,g,h,i,j,k)
  complex(kind=4) a(0:7),b
  complex(kind=16) d,e,f,g,h,i,j,k
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
  complex(kind=16) d,e,f,g,h,i,j,k
  real(kind=4),parameter :: REAL_ANS=0.620377898_4
  real(kind=4),parameter :: IMAG_ANS=0.783784032_4
  real(kind=4),parameter :: REAL_ERROR=0.0000001_4
  real(kind=4),parameter :: IMAG_ERROR=0.0000001_4
  b = (1.4_4,2.4_4)

  d = (0.0_16,0.0_16) 
  e = (1.0_16,1.0_16)
  f = (2.0_16,2.0_16)
  g = (3.0_16,3.0_16)
  h = (4.0_16,4.0_16)
  i = (5.0_16,5.0_16)
  j = (6.0_16,6.0_16)
  k = (7.0_16,7.0_16)

  call sub(a,b,d,e,f,g,h,i,j,k)
  c = (0.0_4,0.0_4)
  do l=0,7
     c = c + a(l)
  enddo
  if ((abs(real(c)  - REAL_ANS) <= REAL_ERROR) .and. &
       (abs(aimag(c) - IMAG_ANS) <= IMAG_ERROR)) then
     print *,"ok"
  else
     print *,"ng", c
     print *,abs(real(c)  - REAL_ANS)
     print *,abs(aimag(c) - IMAG_ANS)
  endif
end program main
