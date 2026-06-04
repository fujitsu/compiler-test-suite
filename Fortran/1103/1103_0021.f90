module m1
interface
module subroutine m1_sub
end
end interface
contains
!    module procedure subm1
!    end
end
module m2
interface
module subroutine subm1()
end
end interface
contains
!    module procedure subm1
!    end
end

submodule(m2) submod
!interface
!module subroutine subm1()
!end
!end interface
contains
    module procedure subm1
    end
end

submodule (m1) m1_sub
interface
module subroutine subs2()
end
end interface
end

submodule (m1:m1_sub) m2_sub
interface
module subroutine subs3()
end
end interface
contains
    module procedure subs2 
call subs3()
    end 
end

submodule (m1:m2_sub) m3_sub
contains
    module subroutine subs3
    end 
end


submodule (m2) m1_sub
interface
module subroutine subs2()
end
end interface
end

submodule (m2:m1_sub) m2_sub
interface
module subroutine subs3()
end
end interface
contains
    module procedure subs2
call subs3()
    end
end

submodule (m2:m2_sub) m3_sub
contains
    module subroutine subs3
    end
end

use m2,only:subm11=>subm1
call subm11()
print *,'sngg753i : pass'
end

