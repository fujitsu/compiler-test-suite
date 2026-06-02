PROGRAM test_IPARITY
  INTEGER(1) :: a(2,2),x(2)
  integer :: d =1
  a(1,1) = b'00100100'
  a(1,2) = b'00110100'
  a(2,1) = b'00101000'
  a(2,2) = b'00101100'
  x= IPARITY(array=a,dim=d,mask=a>2)
  if(x(1).ne.b'00001100')print*,101
  if(x(2).ne.b'00011000')print*,102
  print*,"pass"
END PROGRAM
