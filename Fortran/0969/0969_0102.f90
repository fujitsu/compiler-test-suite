module mod01
 type ty01
  sequence
   integer :: i01
 end type
 contains
  function m01_func01(m01_f01_arg01) result(m01rst01)
   type (ty01) :: m01_f01_arg01
   type (ty01) :: m01rst01
   m01rst01 = m01_f01_cfunc01(m01_f01_arg01)
   contains
    function m01_f01_cfunc01(m01_f01_cf01_arg01) result(m01rst01)
     type ty01
      sequence
       integer :: i01
     end type
     type (ty01) :: m01_f01_cf01_arg01
     type (ty01) :: m01rst01
     m01rst01 = m01_f01_cf01_arg01
    end function
  end function
end module

use mod01, ty02 => ty01

type ty01
 sequence
  integer :: i01
end type
type (ty01) :: t01

call sub01(m01_func01(ty01(7)), t01)

if (t01%i01.ne.7) print *,'error'

print *,'pass'

end

subroutine sub01(s01_arg01, s01_arg02)
 interface
  function func01(f01_arg01) result(frst01)
   type ty01
    sequence
     integer :: i01
   end type
   type (ty01) :: f01_arg01
   type (ty01) :: frst01
  end function
 end interface
 type ty01
  sequence
   integer :: i01
 end type
 type (ty01), intent(in ) :: s01_arg01
 type (ty01), intent(out) :: s01_arg02
 s01_arg02 = func01(s01_arg01)
end subroutine

function func01(f01_arg01) result(frst01)
 type ty01
  sequence
   integer :: i01
 end type
 type (ty01) :: f01_arg01
 type (ty01) :: frst01
 frst01 = f01_arg01
end function
