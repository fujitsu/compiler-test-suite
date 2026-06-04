module mod1
  type ty10(ii)
    integer,kind::ii=3
    integer :: array(3)=(/1,ii,3/)
  end type
TYPE(ty10(2)) ::c
end

module mod
contains
subroutine sub2(ca)
use mod1
TYPE(ty10(2)) ::ca
if (any(ca% array /=[1,2,3])) print *,101
end subroutine
end

use mod
use mod1
call sub2(c)
print *,'pass'
end
