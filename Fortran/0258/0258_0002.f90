  LOGICAL :: a(4)
  LOGICAL :: b
  a(1)=.TRUE.
  a(2)=.TRUE.
  a(3)=.FALSE.
  a(4)=.FALSE.
  b = PARITY(mask=a,dim=1)
  if(b.neqv..FALSE.)print*,101
  print*,"pass"
END PROGRAM
