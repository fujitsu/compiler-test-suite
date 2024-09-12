subroutine sub(a,b,d,e,f,g,h)
  complex(kind=8) a(0:5),b
  integer(kind=4) d,e,f,g,h
  a(0) = b ** (d+e) 
  a(1) = b ** (e+e)
  a(2) = b ** (f+e)
  a(3) = b ** (g+e)
  a(4) = b ** (f+g)
  a(5) = b ** (h+f)
end subroutine sub

program main
  complex(kind=8) a(0:5),b,c
  real(kind=8),parameter :: REAL_ANS=484.9343999999999_8
  real(kind=8),parameter :: IMAG_ANS=-199.2430079999999_8
  real(kind=8),parameter :: REAL_ERROR=1.076770672625571E-13
  real(kind=8),parameter :: IMAG_ERROR=1.076770672625571E-13

  integer(kind=4) d,e,f,g,h
  
  b = (1.4_8,2.4_8)
  d = 0_4
  e = 1_4
  f = 2_4
  g = 3_4
  h = 4_4

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
  endif
end program main
