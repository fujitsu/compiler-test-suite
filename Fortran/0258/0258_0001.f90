  LOGICAL(kind=2) :: a(4)
  LOGICAL(kind=2):: b
  a(1)=.TRUE.
  a(2)=.FALSE.
  a(3)=.FALSE.
  a(4)=.TRUE.
  b = PARITY(mask=a)
  if(b.neqv..FALSE.)print*,101
  print*,"pass"
END PROGRAM
