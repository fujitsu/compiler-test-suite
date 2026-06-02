
module m1
interface
module subroutine sub1() BIND(C,name='abc')
end
module subroutine sub2() BIND(C,name='xyz')
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
subroutine sub3() BIND(C,name='mnk')
end

use m1
interface
subroutine sub3() BIND(C,name='mnk')
end
end interface
call sub1()
call sub2()
call sub3()
print *,'sngg340i : pass'
end
