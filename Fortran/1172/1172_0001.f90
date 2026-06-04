module m1
interface
module subroutine subm2()
end
module subroutine subs2()
end
end interface
contains
    module subroutine subm2()
    end
end

submodule (m1) m2_sub
interface
module subroutine subs3()
end
end interface
contains
    module procedure subs2 
    end 
end

submodule (m1:m2_sub) m3_sub
contains
    module subroutine subs3
call subs2
    end 
end

use m1
call subm2()
print *,'sngg054j : pass'
end

