  INTEGER(kind=2) :: a(2,2)
  integer(kind=2) :: b(2)
  INTRINSIC :: IANY
  a(1,1)=17
  a(1,2)=18
  a(2,1)=19
  a(2,2)=20
  b = IANY(array=a,mask=RESHAPE((/.false.,.false.,.true.,.true./),[2,2]),dim=2)
  if(b(1).ne.18)print*,101
  if(b(2).ne.20)print*,102
  print*,"pass"
END PROGRAM
