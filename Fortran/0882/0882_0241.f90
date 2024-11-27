type ty
integer :: xx
end type

class(ty),pointer :: cptr(:)
type(ty) :: obj(10)
allocate(cptr(10))

cptr(1:10)%xx = 15
cptr(1)%xx = 20
cptr(3)%xx = 40

obj = fun(cptr)
print*,obj

contains

elemental function fun(dobj)
type(ty),intent(in) :: dobj
type(ty) ::fun
fun = dobj
end function

end
