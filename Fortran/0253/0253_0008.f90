subroutine sub
type ty
real::arr(4)
end type
type(ty)::obj1,obj2
obj1 = ty ((/10.50,20.50,30.50,40.50/))
open(file='fort.11',unit=10)
write(10,20)(obj1%arr(i),i=1,4)
close(10)
open(file='fort.11',unit=10)
read(10,FMT=30)(obj2%arr(i),i=1,4)
if (obj2%arr(2)/=20.50)print*,101
print '(G0)',"pass"
20 FORMAT (G0)
30 FORMAT (F6.3)
end subroutine

call sub
end
