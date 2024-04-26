  INTEGER(kind=8):: a(2,2)
  integer(kind=8):: b
  a(1,1)=17
  a(1,2)=18
  a(2,1)=19
  a(2,2)=20
  b=IANY(array=IANY(array=a,mask=a>18,dim=1),dim=IANY(array=a,mask=a>20)+1,mask=(/.true.,.false./))
  if(b.ne.19)print*,101
  print*,"pass"
END PROGRAM
