PROGRAM test
  INTEGER,allocatable :: a(:,:)
  integer:: b(2)
  allocate(a(2,2))
  a(1,1) = 17
  a(1,2) = 19
  a(2,1) = 18
  a(2,2) = 20
  b = IPARITY(mask=a>18,dim=2,array=a)
  if(b(1).ne.19)print*,101
  if(b(2).ne.20)print*,102
  print*,"pass"
END PROGRAM
