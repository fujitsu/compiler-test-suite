PROGRAM test_IPARITY
  INTEGER :: a(2)
  INTEGER :: b
  a(1) = b'00100100'
  a(2) = b'01101010'
  b= IPARITY(a)
  if(b.ne.78)print*,101
  PRINT *, "pass"
END PROGRAM
