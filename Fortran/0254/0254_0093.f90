PROGRAM test
  INTEGER :: a(3,3,3)
  integer:: b(3,3)
  a(1,1:3,1) = 17
  a(2,1:3,1) = 18
  a(3,1:3,1) = 19
  a(1,1:3,2) = 1
  a(2,1:3,2) = 3
  a(3,1:3,2) = 5
  a(1,1:3,3) = 12
  a(2,1:3,3) = 13
  a(3,1:3,3) = 14
  b = IPARITY(a,1)
  if(any(b(1:3,1).ne.16))print*,101
  if(any(b(1:3,2).ne.7))print*,102
  if(any(b(1:3,3).ne.15))print*,103
  print*,"pass"
END PROGRAM
