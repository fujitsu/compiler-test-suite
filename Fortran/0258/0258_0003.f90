  LOGICAL(kind=8):: b
  b = PARITY(mask = RESHAPE((/.true.,.false.,.true.,.false./),[2,2]))
  if(b.neqv..FALSE.)print*,101
  print*,"pass"
END PROGRAM
