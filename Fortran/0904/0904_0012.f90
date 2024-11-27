type ty
integer, allocatable :: ii[:,:,:]
end type ty

type ty1
type(ty) :: obj
end type ty1

type ty2
type(ty1) :: obj2
end type ty2

type(ty2) :: obj3

obj3%obj2%obj = ty(11)
obj3%obj2 = ty1(ty(13))
obj3 = ty2(ty1(ty(13)))

end
