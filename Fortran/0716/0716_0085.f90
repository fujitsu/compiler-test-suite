module mod1
 contains
  subroutine m1sub1(i, j)
   integer :: i, j
   j = i + 1
   entry ent_sub1(i) bind(c)
   entry ent_sub2(i)
   i = 1
  end subroutine
  function m1func1(i) result(rst)
   integer :: i
   integer :: rst
   i = i + 1
   entry ent_func1(i) result(rst) bind(c)
   entry ent_func2(i) result(rst)
   rst = i
  end function
end module

use mod1
use , intrinsic :: iso_c_binding

procedure(m1sub1) , pointer :: pm1sub1
procedure(m1func1), pointer :: pm1func1

type(c_funptr) :: cfptr

cfptr = c_funloc(ent_sub1)
call C_F_PROCPOINTER(cfptr, pm1sub1)

cfptr = c_funloc(ent_func1)
call C_F_PROCPOINTER(cfptr, pm1func1)

cfptr = c_funloc(ent_sub2)
call C_F_PROCPOINTER(cfptr, pm1sub1)

cfptr = c_funloc(ent_func2)
call C_F_PROCPOINTER(cfptr, pm1func1)

cfptr = c_funloc(pm1sub1)
call C_F_PROCPOINTER(cfptr, pm1sub1)

cfptr = c_funloc(pm1func1)
call C_F_PROCPOINTER(cfptr, pm1func1)

end
