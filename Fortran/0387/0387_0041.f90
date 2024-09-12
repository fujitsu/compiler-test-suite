module mod1
 contains
  function xfunc1() result(rst)
   integer :: rst
   rst=1
  end function
end module

use mod1

type ty1
 logical :: l1
 procedure(xfunc1),nopass,pointer :: tpmfp
 integer :: ii
end type

type(ty1) :: t1
procedure(xfunc1),pointer :: pmfp

t1=ty1(.true.,pmfp,1)

print *,'pass'

end
