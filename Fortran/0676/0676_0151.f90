subroutine sub(a,b,d,e,f,g,h)
  complex(kind=8) a(0:5),b
  real(kind=8) d,e,f,g,h
  a(0) = b ** (d+e) 
  a(1) = b ** (e+e)
  a(2) = b ** (f+e)
  a(3) = b ** (g+e)
  a(4) = b ** (f+g)
  a(5) = b ** (h+f)
end subroutine sub

program main
  complex(kind=8) a(0:5),b,c
  real(kind=8),parameter :: REAL_ANS=484.9343999999998_8
  real(kind=8),parameter :: IMAG_ANS=-199.24300799999986_8
  real(kind=8),parameter :: REAL_ERROR=1.136868377216161E-13_8
  real(kind=8),parameter :: IMAG_ERROR=5.684341886080802E-14_8

  real(kind=8) d,e,f,g,h
  
  b = (1.4_8,2.4_8)
  d = 0.0_8
  e = 1.0_8
  f = 2.0_8
  g = 3.0_8
  h = 4.0_8

  call sub(a,b,d,e,f,g,h)
  c = (0.0_8,0.0_8)
  do l=0,5
     c = c + a(l)
  enddo

  if ((abs(real(c)  - REAL_ANS) <= REAL_ERROR) .and. &
       (abs(aimag(c) - IMAG_ANS) <= IMAG_ERROR)) then
     print *,"ok"
  else
     print *,"ng", c,abs(real(c)  - REAL_ANS),abs(aimag(c) - IMAG_ANS)
     print *,abs(real(c)  - REAL_ANS),abs(aimag(c) - IMAG_ANS)
  endif
end program main
