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
    module procedure k 
    end 
end

submodule (m:n) z
contains
    module procedure  x
     call k
    end 
end

use m
call k()
print *,'sngg068j : pass'
end

