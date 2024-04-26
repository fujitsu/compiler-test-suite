  INTEGER(kind=2) :: a(4)
  integer(kind=2):: b
  a(1)=17
  a(2)=18
  a(3)=19
  a(4)=20
  b = IANY(array=a)
  if(b.ne.23)print*,101
  print*,"pass"
END PROGRAM
