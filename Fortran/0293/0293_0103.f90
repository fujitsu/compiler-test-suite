module mod
type base
integer kk
end type

type ty
integer :: ii
end type ty

type,extends(ty) :: ty1
integer :: jj
type(base):: inst
end type ty1
end module

use mod
type(ty1) :: obj

write(60,*)extends_type_of(obj,obj%inst)
print *,'pass'
end
