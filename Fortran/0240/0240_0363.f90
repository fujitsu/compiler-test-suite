call s()
print *,'pass'
end
subroutine s()
type ty1
integer :: i
end type
type, extends(ty1) :: ty2
end type
class (ty1),pointer :: p1,p2
allocate(p1,p2)
p1%i=1
p2%i=1
if (1.eq.2) print *,extends_type_of(p1, p2)
if(extends_type_of(p1, p2).neqv..true.) print *,'err'
end
