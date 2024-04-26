type ty
integer::ii
end type
type(ty)::obj(2)
real::r1
obj(1)%ii=10
obj(2)%ii=20
open(UNIT=obj(1)%ii,FILE='fort.04',ACTION='write')
write(obj(1)%ii,fmt=10)20.25
10 format(G0)
close(obj(1)%ii)
open(UNIT=obj(2)%ii,FILE='fort.04',ACTION='read')
read(obj(2)%ii,fmt=20)r1
20 format(F5.2)
close(obj(2)%ii,status="delete")
if (r1/=20.25)print*,"error:101"
print*,"pass"
end
