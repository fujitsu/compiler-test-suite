  INTEGER(kind=8):: a(2,2)
  integer(kind=8):: b
  a(1,1)=17
  a(1,2)=18
  a(2,1)=19
  a(2,2)=20
  b = IPARITY(array=a,mask=RESHAPE((/.true.,.false.,.true.,.false./),[2,2]))
  if(b.ne.3)print*,101
  print*,"pass"
END PROGRAM
