module mod01
 interface
  subroutine m01isub01()
  end subroutine
 end interface
 contains
  function m01func01() result(m01rst01)
   procedure(m01isub01), pointer :: m01rst01
   m01rst01 => m01isub01
  end function
  function m01func02() result(m01rst02)
   procedure(m01func01), pointer :: m01rst02
   m01rst02 => m01func01
  end function
end module

use mod01

procedure(m01isub01), pointer :: pm01isub01p
procedure(m01func01), pointer :: pm01func01p
procedure(m01func02), pointer :: pm01func02p

pm01func02p => m01func02
pm01func01p => pm01func02p()
pm01isub01p => pm01func01p()

if (associated(pm01isub01p, m01isub01)) call pm01isub01p()

end

subroutine m01isub01()
 print *,'pass'
end subroutine
