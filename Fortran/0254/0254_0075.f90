  INTEGER(kind=8):: a(4)
  integer(kind=8):: b
  a(1)=17
  a(2)=18
  a(3)=19
  a(4)=20
  b = IPARITY(array=a,mask=a>18)
  if(b.ne.7)print*,101
  print*,"pass"
END PROGRAM
