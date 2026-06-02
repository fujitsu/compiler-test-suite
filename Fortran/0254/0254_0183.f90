PROGRAM test_iall
  INTEGER(1) :: a(2,2),x(2)
  integer :: d =1
  a(1,1) = b'00100100'
  a(1,2) = b'00110100'
  a(2,1) = b'00101000'
  a(2,2) = b'00101100'
  x= IALL(array=a,dim=d,mask=a>2)
  if(x(1).ne.b'00100000')print*,101
  if(x(2).ne.b'00100100')print*,102
  print*,"pass"
END PROGRAM
