MODULE mod1
TYPE ty
  complex::cmp
END TYPE

TYPE ty1
  TYPE(ty),POINTER::cmp_ty
END TYPE

TYPE ty2
   TYPE (ty1)::cmp_ty1
END TYPE
type (ty)::ty_obj=ty((7.88,9.87))
type (ty2)::dmy
end module mod1
PROGRAM main
use mod1
allocate(dmy%cmp_ty1%cmp_ty, source = ty_obj)

associate ( x => (dmy%cmp_ty1%cmp_ty%cmp%re))
if( x .ne. 7.88) print*,101
end associate
PRINT*,"PASS"
end
