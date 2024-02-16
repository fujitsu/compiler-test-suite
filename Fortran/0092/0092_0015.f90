integer::aa=10
character(LEN=4)::ch
block
type ty
integer::aa=20
end type
type(ty)::obj
open(FILE='fort.19',NEWUNIT=obj%aa,ROUND='UP')
write(obj%aa,*)"xaxa"
close(obj%aa)
open(FILE='fort.19',NEWUNIT=obj%aa,ROUND='UP',ACTION='READ')
read(obj%aa,*)ch
close(obj%aa)
end block
if (ch/="xaxa")print*,"error:101"
if (aa/=10)print*,"error:102"
print*,"pass"
end
