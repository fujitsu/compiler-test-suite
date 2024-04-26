PROGRAM test
  LOGICAL :: a(3,3,3)
  LOGICAL :: b(3,3)
  a(1,1:3,1) = .TRUE.
  a(2,1:3,1) = .FALSE.
  a(3,1:3,1) = .FALSE.
  a(1,1:3,2) = .TRUE.
  a(2,1:3,2) = .TRUE.
  a(3,1:3,2) = .FALSE.
  a(1,1:3,3) = .FALSE.
  a(2,1:3,3) = .TRUE.
  a(3,1:3,3) = .FALSE.
  b = PARITY(a,1)
  if(any(b(1:3,1).neqv. .TRUE.))print*,101
  if(any(b(1:3,2).neqv. .FALSE.))print*,102
  if(any(b(1:3,3).neqv. .TRUE.))print*,103
  print*,"pass"
END PROGRAM
