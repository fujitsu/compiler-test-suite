module m2
interface
module subroutine sub1(a) BIND(C)
end
end interface
contains
module subroutine sub1(a) BIND(C)
if (a/=1) print *,101
end
end

use m2
call sub1(1.0)
print *,'sngg338i : pass'
end
