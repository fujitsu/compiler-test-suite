MODULE mod1
type z
   integer:: xx
end type
TYPE ty
  type(z),allocatable::kk
END TYPE
END MODULE



PROGRAM MAIN
USE mod1
TYPE(ty) :: ty_obj1
ty_obj1 = fun()
if (ty_obj1%kk%xx /=40) print *,101
print *,'pass'
contains
function fun()
  TYPE(ty)::fun
  allocate(fun%kk)
  fun%kk%xx=40
end function
END





