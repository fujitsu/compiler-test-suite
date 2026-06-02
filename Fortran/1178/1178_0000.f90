
module m1
interface
module subroutine sub1() BIND(C)
end
module subroutine sub2() BIND(C)
end
end interface
contains
module procedure sub1
end
end
submodule (m1) m1_sub
contains
    module procedure sub2 
    end 
end
subroutine sub3() BIND(C)
end

use m1
interface
subroutine sub3() BIND(C)
end
end interface
call sub1()
call sub2()
call sub3()
print *,'sngg322i : pass'
end
