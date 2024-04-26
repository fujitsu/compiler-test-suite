module mod1
  type ty10(ii)
    integer,kind::ii=3
    integer :: array(3)=(/(iii,iii=1,ii)/)
  end type
end

module mod
use mod1
contains
subroutine sub2(ca)
TYPE(ty10(3)) ::ca
if (any(ca%array/=[1,2,3])) print *,101
end subroutine
end

use mod
TYPE(ty10(3)) ::ca
call sub2(ca)
print *,'pass'
end
