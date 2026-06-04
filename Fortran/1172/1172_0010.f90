module m
integer::kkk
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
end

submodule (m:n) w
contains
    module procedure k 
     kkk=1
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
if (kkk/=1)print *,10001
print *,'sngg072j : pass'
end

