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
end subroutine
end

use mod
print *,'pass'
end
