function proc1() result(rst)
  character   :: rst
  rst = '1'
end function
module mod1
  contains
  function func1() result(rst)
    character   :: rst
    entry ent1() result(rst)
    rst = '1'
  end function
  subroutine sub1(pp)
    procedure(ent1), pointer :: pp
    character :: cha
    cha = pp()
    if ( '1' .ne. cha ) print *,'fail'
  end subroutine
end module
use mod1
procedure(ent1),pointer :: ppp
procedure(ent1) :: proc1
ppp=>proc1
call sub1(ppp)
print *,'pass '
end
