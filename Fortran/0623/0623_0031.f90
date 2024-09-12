type ty1
 integer :: i
end type
type, extends(ty1) :: ty2
end type
class (ty2),pointer :: p1,p2
type(ty1),target::t1
type(ty2),target::t2
p1=>t2
p2=>t2
if (1.eq.2)print *,extends_type_of(p1, p2)
print *,"pass"
end
