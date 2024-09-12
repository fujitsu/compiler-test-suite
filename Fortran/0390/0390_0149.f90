MODULE mod1
TYPE ty
  INTEGER :: ii
  INTEGER ::kk
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
fun%ii=40
fun%kk=40
end function
END





