module mod1
 contains
  function base_func1() result(rst)
   real     :: rr
   integer  :: rst
   entry i4_ent1(rr) result(rst)
   rst = int(rr)
  end function

  function base_func2() result(rst)
   real     :: rst
   entry r4_ent1() result(rst)
   rst = 1.0
  end function

  subroutine base_sub1(i)
   integer  :: i
   entry sub_ent1(i)
   if (i.ne.1) print *,'error'
  end subroutine

  subroutine sub1()
   procedure(i4_ent1 ), pointer :: pp1
   procedure(sub_ent1), pointer :: pp2
   procedure(r4_ent1 ), pointer :: pp3
   pp1 => i4_ent1
   pp2 => sub_ent1
   pp3 => r4_ent1
   call pp2(pp1(pp3()))
  end subroutine
end module

use mod1

call sub1()

print *,'pass'

end
