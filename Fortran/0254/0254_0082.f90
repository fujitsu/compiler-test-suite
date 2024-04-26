PROGRAM test
  INTEGER(kind=8) :: a(2,2)
  integer(kind=8):: b
  a(1,1) = 17
  a(1,2) = 18
  a(2,1) = 19
  a(2,2) = 20
  b = IPARITY(a,a>18)
  if(b.ne.7)print*,101
  print*,"pass"
END PROGRAM
