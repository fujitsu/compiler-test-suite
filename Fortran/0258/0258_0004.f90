  LOGICAL(kind=2) :: b(2)
  INTRINSIC :: PARITY
  b = PARITY(mask = RESHAPE((/.false.,.false.,.true.,.true./),[2,2]),dim=2)
  if(b(1).neqv. .TRUE.)print*,101
  if(b(2).neqv. .TRUE.)print*,102
  print*,"pass"
END PROGRAM
