subroutine sub(arg01)
  type :: str
    sequence
    integer :: iii
  end type
  procedure(type(str)) :: arg01
  print *,arg01()
end subroutine
function func01() result(ret)
  type :: str
    sequence
    integer :: iii
  end type
  type(str) :: ret
  ret = str(100)
end function
function func02() result(ret)
  type :: str
    sequence
    integer :: iii
  end type
  type(str) :: ret
  ret = str(200)
end function

module mod
  type :: str
    sequence
    integer :: iii
  end type
  interface
    subroutine sub(arg01)
      type :: str
        sequence
        integer :: iii
      end type
      procedure(type(str)) :: arg01
    end subroutine
    function test() result(ret)
      type :: str
        sequence
        integer :: iii
      end type
      type(str) :: ret
    end function
  end interface
  procedure(test) :: func01
  procedure(type(str)) :: func02
  contains
  subroutine mmm()
    call sub(func01)
    call sub(func02)
  end subroutine
end module
use mod
call sub(func01)
call sub(func02)
call mmm()
print *,'pass'
end
