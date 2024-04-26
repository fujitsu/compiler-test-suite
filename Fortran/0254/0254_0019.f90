PROGRAM test
  INTEGER :: a(2,2)
  integer:: b(2)
  a(1,1) = 3
  a(1,2) = 1
  a(2,1) = 11
  a(2,2) = 3
  b = IALL(a,2,a>2)
  if(b(1).ne.3)print*,101
  if(b(2).ne.3)print*,102
  print*,"pass"
END PROGRAM
