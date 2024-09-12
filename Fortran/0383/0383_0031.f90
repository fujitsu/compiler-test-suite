module mod01
  type str
    integer :: iii
  end type
  interface
    subroutine exsub(arg4)
      import 
      procedure(ment01) :: arg4
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
