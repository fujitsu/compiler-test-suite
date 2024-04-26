module mod
type base
integer kk
end type

type ty
integer :: ii
end type ty

type,extends(ty) :: ty1
integer :: jj
end type ty1
end module
 
use mod
type(base) :: obj0
type(ty1) :: obj1
type(ty1),allocatable::p1,p2
type(base),allocatable::p0
 
if (.not.extends_type_of(obj1,obj1)) print *,101
if (extends_type_of(obj0,obj1)) print *,102
if (.not.extends_type_of(p1,p2)) print *,103
if (extends_type_of(p0,p1)) print *,104
allocate(p0,p1,p2)
if (.not.extends_type_of(p1,p2)) print *,105
if (extends_type_of(p0,p1)) print *,106
print *,'pass'
end
 
