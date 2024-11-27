implicit  type(ty2)  (p)
implicit  type(ty1)  (q)
implicit  type(ty)   (r)

type ty
integer, allocatable :: ii[:,:]
end type ty

type ty1
type(ty) :: obj
end type ty1

type ty2
type(ty1) :: obj2
end type ty2

type(ty2) :: obj3

pp%obj2%obj = rr
qq%obj = rr
rr= rr

end
