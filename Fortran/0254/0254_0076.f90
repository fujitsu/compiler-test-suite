  INTEGER,allocatable :: a(:)
  integer,allocatable:: b
  allocate(a(4),b)
  a(1)=17
  a(2)=18
  a(3)=19
  a(4)=20
  b = IPARITY(array=a,dim=1,mask=a>18)
  if(b.ne.7)print*,101
  print*,"pass"
END PROGRAM