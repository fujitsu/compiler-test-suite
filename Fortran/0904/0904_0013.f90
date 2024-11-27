type ty
integer,allocatable :: ii[:,:,:,:]
end type ty

type ,extends(ty)  ::ty1
type(ty) :: obj
end type ty1

type,extends(ty1)    ::ty2
type(ty1) :: obj2
end type ty2

type(ty2) :: obj3

obj3%obj = ty(22)
obj3%obj2%obj = ty(22)

end
