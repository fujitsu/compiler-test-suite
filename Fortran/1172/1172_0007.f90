module m
interface
module subroutine k()
end
module subroutine x()
end
end interface
end

submodule (m) n
contains
    module subroutine k 
    end 
end

submodule (m:n) z
contains
    module subroutine x
     call k
    end 
end

use m
call k()
print *,'sngg069j : pass'
end

