module mod
type ty1
 integer ,pointer :: ip(:)
end type
type(ty1),pointer :: typ
type(ty1),target  :: tyt
private :: typ,tyt
end


call sub()
print *,"pass"
end
subroutine sub()
use mod
type tyyy
type (ty1) :: iooo
end type
type (tyyy) :: sss
end
