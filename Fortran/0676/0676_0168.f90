program main
  complex(kind=4) a(0:2),b(0:2),c
  real(kind=4),parameter :: ERROR0=(3.954736E-06_4)
  real(kind=4),parameter :: ERROR1=(6.87704323E-06_4)
  real(kind=4),parameter :: ERROR2=(4.825253E-05_4)

  c = (1.4_8,2.4_8)

  a(0) = c**3.0_4
  b(0) = (c*c) * c
  if (cabs(a(0) - b(0)) <= ERROR0) then
     print *,"ok"
  else
     print *,"ng","ERROR->",cabs(a(0) - b(0))
  endif

  a(1) = c**4.0_4
  b(1) = (c*c) * (c*c)
  if (cabs(a(1) - b(1)) <= ERROR1) then
     print *,"ok"
  else
     print *,"ng","ERROR->",cabs(a(1) - b(1))
  endif
  
  a(2) = c**5.0_4
  b(2) = (c*c) * ((c*c) * c)
  if (cabs(a(2) - b(2)) <= ERROR2) then
     print *,"ok"
  else
     print *,"ng","ERROR->",cabs(a(2) - b(2))
  endif
  
end program
