module m
interface
module subroutine x()
end
end interface
end

submodule (m) n
interface
module subroutine k()
end
end interface
contains
    module procedure k 
    end 
end

submodule (m:n) z
contains
    module subroutine x
     call k
    end 
end

use m
call x()
print *,'sngg070j : pass'
end

