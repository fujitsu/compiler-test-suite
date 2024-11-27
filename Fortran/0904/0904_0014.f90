type ty
integer,allocatable :: ii[:]
end type ty

type ,extends(ty)  ::ty1
type(ty) :: obj,xyz
end type ty1

type,extends(ty1)    ::ty2
type(ty1) :: obj2,obj22
end type ty2

type(ty2) :: obj3,obj33

obj3 = obj33
obj3%obj2 = obj33%obj22
obj3%obj2%obj = obj33%obj2%xyz

end
