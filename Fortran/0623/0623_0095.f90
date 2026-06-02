type ty1
  integer :: i
end type
type, extends(ty1) :: ty2
end type
class (ty1),pointer :: p1,p2
logical :: ll
allocate(p1,p2)
p1%i=1
p2%i=1
if (1.eq.2) print *,extends_type_of(p2, p1)
ll=extends_type_of(p2, p1)
if (ll.eqv..false.) print *,'fail'
print *,'pass'
end
