  INTEGER,pointer :: a(:)
  integer,pointer :: b,d
  allocate(a(4),b,d)
  a(1)=17
  a(2)=18
  a(3)=19
  a(4)=20
  d=1
  b = IPARITY(array=a,dim=d,mask=a>18)
  if(b.ne.7)print*,101
  print*,"pass"
END PROGRAM
