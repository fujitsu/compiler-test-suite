module mod123
 integer :: k
 type ty10(ii)
 integer,kind::ii
 integer :: array(ii)=(/(i,i=1,ii)/)
end type

type(ty10(10))::xxx
end

use mod123
if (xxx%array(1).ne.1) print *,'err'
if (xxx%array(10).ne. 10) print *,'err1'
if (size(xxx%array).ne.10) print *,'err2'
if (xxx%array(3).ne.3) print *,'err3'
if (xxx%ii .ne. 10) print *,'err4'
print*,'pass'
end

