MODULE mod1
type x
  integer(8):: x1
  integer(8):: x2
end type
TYPE ty
  type(x)::kk
END TYPE
END MODULE



PROGRAM MAIN
USE mod1
TYPE(ty) :: ty_obj1
ty_obj1 = fun()
if (ty_obj1%kk%x1/=40) print *,101
if (ty_obj1%kk%x2/=41) print *,102
print *,'pass'
contains
function fun()
  TYPE(ty)::fun
fun%kk%x1=40
fun%kk%x2=41
end function
END





