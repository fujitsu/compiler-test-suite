PROGRAM test
  LOGICAL :: a(2,2)
  LOGICAL:: b(2)
  a(1,1) = .TRUE.
  a(1,2) = .FALSE.
  a(2,1) = .TRUE.
  a(2,2) = .TRUE.
  b = PARITY(a,2)
  if(b(1).neqv. .TRUE.)print*,101
  if(b(2).neqv. .FALSE.)print*,102
  print*,"pass"
END PROGRAM
