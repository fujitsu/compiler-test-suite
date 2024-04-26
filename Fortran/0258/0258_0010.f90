  LOGICAL(kind=8):: a(2,2)
  LOGICAL(kind=8):: b
  a(1,1)= .TRUE.
  a(1,2)= .FALSE.
  a(2,1)= .TRUE.
  a(2,2)= .FALSE.
  b=PARITY(mask=PARITY(mask=a,dim=1),dim=1)
  if(b.neqv. .FALSE.)print*,101
  print*,"pass"
END PROGRAM
