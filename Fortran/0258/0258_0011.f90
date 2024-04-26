type ty
LOGICAL :: a(2,2)
INTEGER :: d
end type ty
type(ty):: obj
  LOGICAL :: b(2)
  obj%a(1,1) = .TRUE.
  obj%a(1,2) = .FALSE.
  obj%a(2,1) = .TRUE.
  obj%a(2,2) = .TRUE.
  obj%d=1
  b = parity(mask=obj%a,dim=obj%d)
  if(b(1).neqv. .FALSE.)print*,101
  if(b(2).neqv. .TRUE.)print*,102
  print*,"pass"
END PROGRAM
