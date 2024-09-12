module mod01
  type str
    integer :: iii
  end type
  interface
    subroutine exsub(arg4)
      import 
      type ty
        procedure(ment01),nopass,pointer :: iii
      end type
      type(ty):: arg4
    end subroutine
  end interface
  contains
  function xfunc01() result(ret)
    type(str) :: ret
    entry ment01() result(ret)
  end function
end module
use mod01
print *,'pass'
end
