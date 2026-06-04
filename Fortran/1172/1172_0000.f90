module m1
interface
module subroutine subm1()
end
module subroutine subm2()
end
module subroutine subs1()
end
module subroutine subs2()
end
end interface
contains
    module procedure subm1
    end
    module subroutine subm2()
    end
    subroutine m2_sub()
    end
    subroutine m3_sub()
    end
    subroutine m1_sub()
    end
    subroutine subs3
    end
end
submodule (m1) m1_sub
contains
    module procedure subs1 
    end 
end
submodule (m1) m2_sub
interface
module subroutine subs3()
end
end interface
contains
    module procedure subs2 
if (1==2)call subs3()
call m1_sub()
call m2_sub()
    end 
    subroutine m1_sub()
    end
end
submodule (m1:m2_sub) m3_sub
contains
    module subroutine subs3
call subm1
call subm2
call subs1
call subs2
    end 
end

use m1
call subm1()
call subm2()
call subs1()
call subs2()
print *,'sngg053j : pass'
end

