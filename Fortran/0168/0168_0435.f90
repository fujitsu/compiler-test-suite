module m0
  type ty
    integer :: x  =9
  end type
contains
    function   nform(dtv, i)
      type(ty), intent(in) :: dtv
      integer, intent(in) :: i
     nform =dtv%x+i 
    end function
end
module mx
 integer:: xz=11
end
module m1
use m0
interface operator(+)
   procedure :: nform
end interface
end
module m2
use m1
use mx
private
public :: zz
contains
  subroutine zz
  TYPE (ty) :: t1
  if ((t1+10)/=19) print *,201
  if (xz/=11) print *,501
  end subroutine
end
module m3
use m2
private
public:: z
contains
  subroutine z
call zz
  end subroutine
end
module m4 
use m3
end
use m4
call z
print *,'pass'
end
