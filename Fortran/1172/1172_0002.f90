module m1
interface
module subroutine subs2()
end
end interface
end

submodule (m1) m2_submodule
interface
module subroutine subs3()
end
end interface
contains
    module procedure subs2 
    end 
end

submodule (m1:m2_submodule) m3_submodule
contains
    module subroutine subs3
     call subs2
    end 
end

use m1
call subs2()
print *,'sngg055j : pass'
end

