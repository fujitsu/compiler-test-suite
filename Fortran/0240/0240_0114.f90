type ty1
integer :: i
end type
type, extends(ty1) :: ty2
end type
class (ty1),pointer :: p1,p2
allocate(p1,p2)
print *,extends_type_of(p1, p2)
end
