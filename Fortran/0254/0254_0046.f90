  INTEGER :: a(4)
  integer:: b
  a(1)=17
  a(2)=18
  a(3)=19
  a(4)=20
  b = IANY(array=a,mask=(/.true.,.false.,.true.,.false./))
  if(b.ne.19)print*,101
  print*,"pass"
END PROGRAM
