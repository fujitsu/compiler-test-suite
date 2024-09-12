module mod1
 type ty10(ii)
 integer,kind::ii=30
 integer :: array(ii)=(/(iii,iii=1,ii)/)
 end type
end 
module mod
 interface
 subroutine sub2(ca)
  use mod1
  TYPE(ty10(90)) ::ca
  end subroutine
  end interface
  end 
use mod
use mod1
TYPE(ty10(90)) ::ca
call sub2(ca)
end

subroutine sub2(ca)
use mod1
TYPE(ty10(90)) ::ca
if(ca%ii .eq. size(ca%array) .and. &
   ubound(ca%array,1) .eq. lbound(ca%array,1)* ubound(ca%array,1))then
print*,'PASS'
else
print*,'FAIL'
endif
end subroutine
