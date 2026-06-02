PROGRAM test_IANY
  INTEGER :: a(2)
  INTEGER :: b
  a(1) = b'00100100'
  a(2) = b'01101010'
  b= IANY(a)
  if(b.ne.110)print*,101
  PRINT *, "pass"
END PROGRAM
