module mod1
 contains
  subroutine msub1()
  end subroutine
  function xfunc1() result(rst)
   integer :: rst
   rst=1
  end function
end module

use mod1

type ty1
 procedure(integer),nopass,pointer :: tpmsp
end type

type(ty1) :: t1
procedure(msub1),pointer :: pmsp

t1%tpmsp=>xfunc1
pmsp=>msub1

i = t1%tpmsp()

call msub1()
call pmsp()

print *,'pass'

end
