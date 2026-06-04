module m1
interface
module subroutine sub1(a) BIND(C,name='abc')
end
end interface
contains
module procedure sub1
if (a/=1) print *,101
end
end

use m1
call sub1(1.0)
print *,'sngg339i : pass'
end
