MODULE mod1
TYPE ty
  real(16),allocatable::kk
END TYPE
END MODULE



PROGRAM MAIN
USE mod1
TYPE(ty) :: ty_obj1
ty_obj1 = fun()
print *,'pass'
contains
function fun()
  TYPE(ty)::fun
  integer(8)::n
  pointer (k,n)
  allocate(fun%kk)
fun%kk=40
end function
END





