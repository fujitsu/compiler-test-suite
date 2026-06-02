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

submodule (m) z
contains
    module subroutine x
     call k
    end 
end

use m
call k()
print *,'sngg058j : pass'
end

