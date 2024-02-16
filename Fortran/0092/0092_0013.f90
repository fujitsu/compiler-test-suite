program main
call sub
contains
subroutine sub
type ty
integer::arr(4)
real::r1
end type
type(ty)::obj
associate(ptr=>obj)
open(ACTION='WRITE',NEWUNIT=ptr%arr(3),FILE='fort.17',FORM='UNFORMATTED')
write(ptr%arr(3))50.50
close(ptr%arr(3))
open(ACTION='read',NEWUNIT=ptr%arr(2),FILE='fort.17',FORM='UNFORMATTED')
read(ptr%arr(2))ptr%r1
close(ptr%arr(2))
end associate
if (obj%r1/=50.50)print*,"error:01"
print*,"pass"
end subroutine
end

