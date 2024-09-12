MODULE mod1
TYPE ty
  INTEGER,pointer    ::kk
END TYPE
END MODULE



PROGRAM MAIN
USE mod1
TYPE(ty) :: ty_obj1
  integer(8)::nn
  pointer (kk,nn)
ty_obj1 = fun()
if (ty_obj1%kk/=40) print *,1
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





