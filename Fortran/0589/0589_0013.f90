 module m1
   type fx
    integer :: ii
   end type

   integer :: y = 1

interface fx
  function pp(ii)
    integer, pointer :: pp
    integer,target :: ii
  end
 end interface

 contains
 subroutine test(a, b)
    integer,intent(in)::a
    integer,intent(inout)::b
      b = a
    end
 end module

use m1
    integer,target :: act=20
    call test(y, fx(act))
    if (act /= 1)print *,104
    if (y /= 1)print *,105
    print *,"PASS"
 end program
  function pp(ii)
    integer, pointer :: pp
    integer,target :: ii
    pp=>ii
  end
