subroutine sub(a,b,d,e,f,g,h,i,j,k)
  complex(kind=16) a(0:7),b
  complex(kind=4) d,e,f,g,h,i,j,k
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
  complex(kind=4) d,e,f,g,h,i,j,k
  real(kind=16),parameter :: REAL_ANS=0.62037806775306421312624352011267422_16
  real(kind=16),parameter :: IMAG_ANS=0.78378409006759787774927482037887443_16
  real(kind=16),parameter :: REAL_ERROR=0.00001_16
  real(kind=16),parameter :: IMAG_ERROR=0.00001_16
  b = (1.4_16,2.4_16)

  d = (0.0_4,0.0_4) 
  e = (1.0_4,1.0_4)
  f = (2.0_4,2.0_4)
  g = (3.0_4,3.0_4)
  h = (4.0_4,4.0_4)
  i = (5.0_4,5.0_4)
  j = (6.0_4,6.0_4)
  k = (7.0_4,7.0_4)

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
     print *,abs(real(c)  - REAL_ANS)
     print *,abs(aimag(c) - IMAG_ANS)
  endif
end program main
