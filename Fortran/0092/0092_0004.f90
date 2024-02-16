type ty
integer::ii
end type
type(ty)::obj(2)
real::r1
open(NEWUNIT=obj(1)%ii,FILE='fort.05',ACTION='write')
write(obj(1)%ii,*)20.25
close(obj(1)%ii)
open(NEWUNIT=obj(2)%ii,FILE='fort.05',ACTION='read')
read(obj(2)%ii,*)r1
close(obj(2)%ii,status="delete")
if (r1/=20.25)print*,"error:101"
print*,"pass"
end
