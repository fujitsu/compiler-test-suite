module m1

interface
subroutine xxx(cdmy)
class(*),pointer :: cdmy
end subroutine
end interface

contains
subroutine ext()
call sub
contains
subroutine sub()
block
type ty
integer :: ii
end type
type(ty),target :: obj
class(*),pointer :: cptr
cptr=>obj         
call xxx(cptr)
end block

block
type ty
integer :: ii
end type
type(ty),target :: obj
class(*),pointer :: cptr
cptr=>obj         
call xxx(cptr)
end block
end subroutine
end subroutine

end module


subroutine ext(cdmy)
class(*),pointer :: cdmy
call sub
contains
subroutine sub
block
type ty
integer :: ii
end type
type(ty) :: xxx

if(same_type_as(cdmy,xxx) .neqv. .false.) print*,101
end block 
end subroutine

end subroutine
use m1
call ext()
print*,'pass'
end


subroutine xxx(cdmy)
interface
subroutine ext(cdmy)
class(*),pointer :: cdmy
end subroutine
end interface
class(*),pointer :: cdmy
call ext(cdmy)
end subroutine

