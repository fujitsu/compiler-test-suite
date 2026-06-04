module m
  interface
     module subroutine sub(a) bind(c,name="proc")
       use, intrinsic :: ISO_C_BINDING
       type,bind(c):: ty
          type(C_FUNPTR) :: j = C_NULL_FUNPTR
       end type ty
       type(ty)::a
     end subroutine
  end interface
contains
  module subroutine sub(a) bind(c,name="proc")
    use, intrinsic :: ISO_C_BINDING
    type,bind(c):: ty
       type(C_FUNPTR) :: j = C_NULL_FUNPTR
    end type ty
    type(ty)::a
  end subroutine
end module m
use m
print *,'sngtbind_06:pass'
end
