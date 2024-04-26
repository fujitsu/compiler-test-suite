module mod1
 contains
  function func1() result(rst)
   character   :: rst
   entry ent1() result(rst)
   rst = '1'
  end function
  subroutine sub1()
   procedure(ent1), pointer :: pp
   pp=>ent1
   if (pp()/='1')print *,1,pp()
  end subroutine
end module
use mod1
call sub1
print *,'pass'
end
