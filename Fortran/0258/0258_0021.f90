  LOGICAL,pointer :: a(:)
  LOGICAL,pointer :: b
  INTEGER,pointer :: d
  allocate(a(4),b,d)
  a(1)=.TRUE.
  a(2)=.FALSE.
  a(3)=.TRUE.
  a(4)=.FALSE.
  d=1
  b = PARITY(mask=a,dim=d)
  if(b .neqv. .FALSE.)print*,101
  print*,"pass"
END PROGRAM
