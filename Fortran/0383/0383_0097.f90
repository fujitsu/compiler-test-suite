module mod
  interface
    subroutine sub(arg1)
      integer :: arg1
    end subroutine
    function fun()
    end function
  end interface
  procedure(sub),pointer:: a
  type ty
    procedure(sub),nopass,pointer:: a
  end type
  type ty1
    procedure(sub),nopass,pointer:: a
  end type
end module

use mod
type(ty) :: tp
type(ty1):: tp1
type ty2
procedure(sub),nopass,pointer:: a
end type
type ty3
procedure(sub),nopass,pointer:: a
end type
type(ty2) :: tp2
type(ty3) :: tp3
a=>sub
tp%a=>sub
tp1%a=>sub
tp2%a=>sub
tp3%a=>sub
call a(1)
call tp%a(1)
call tp1%a(1)
call tp2%a(1)
call tp3%a(1)
print *,'pass '
end

subroutine sub(arg1)
  integer :: arg1
  if (1 .ne. arg1) print *,'fail'
end
