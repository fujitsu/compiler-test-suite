subroutine sub(a,b,d,e,f,g,h)
  complex(kind=4) a(0:5),b
  integer(kind=4) d,e,f,g,h
  a(0) = b ** (d+e) 
  a(1) = b ** (e+e)
  a(2) = b ** (f+e)
  a(3) = b ** (g+e)
  a(4) = b ** (f+g)
  a(5) = b ** (h+f)
end subroutine sub

program main
  complex(kind=4) a(0:5),b,c
  real(kind=4),parameter :: REAL_ANS=484.934509_4
  real(kind=4),parameter :: IMAG_ANS=-199.242966_4
  real(kind=4),parameter :: REAL_ERROR=0.00001_4
  real(kind=4),parameter :: IMAG_ERROR=0.00001_4

  integer(kind=4) d,e,f,g,h
  
  b = (1.4_4,2.4_4)
  d = 0_4
  e = 1_4
  f = 2_4
  g = 3_4
  h = 4_4

  call sub(a,b,d,e,f,g,h)
  c = (0.0_4,0.0_4)
  do l=0,5
     c = c + a(l)
  enddo

  if ((abs((real(c)  - REAL_ANS)/real(c)) <= REAL_ERROR) .and. &
       (abs((aimag(c) - IMAG_ANS)/aimag(c)) <= IMAG_ERROR)) then
     print *,"ok"
  else
     print *,"ng", c
  endif
end program main
