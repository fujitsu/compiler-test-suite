PROGRAM test_iall
  INTEGER :: a(2)
  INTEGER :: b
  a(1) = b'00100100'
  a(2) = b'01101010'
  b= IALL(a)
  if(b.ne.32)print*,101
  PRINT *, "pass"
END PROGRAM
