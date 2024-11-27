module m1
type ty
integer,allocatable :: ii[:,:]
end type ty

end module

module m2
use m1
type ,extends(ty)  ::ty1
type(ty) :: obj
end type ty1
end module

module m3
use m2
type,extends(ty1)    ::ty2
type(ty1) :: obj2
end type ty2
end module

module m4
use m3
type(ty2) :: obj3
end module

program p

use m1
use m2
use m3
use m4

obj3%obj = ty(22)
obj3%obj2%obj = ty(22)

end
