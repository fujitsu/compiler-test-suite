type ty
INTEGER:: a(2,2),d
end type ty
type(ty)::obj
  integer:: b(2)
  obj%a(1,1)=17
  obj%a(1,2)=18
  obj%a(2,1)=19
  obj%a(2,2)=20
  obj%d=1
  b=IPARITY(array=obj%a,dim=obj%d)
  if(b(1).ne.2)print*,101
  if(b(2).ne.6)print*,102
  print*,"pass"
END PROGRAM
