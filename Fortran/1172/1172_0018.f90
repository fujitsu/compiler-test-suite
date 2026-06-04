module m
interface
module function x()
end
end interface
end

submodule (m) n
interface
module function k()
end
end interface
contains
    module procedure k 
    k=1
    end 
end

submodule (m:n) z
contains
    module procedure x
     if ( k()/=1) print *,101
     x=1
    end 
end

use m
if ( x()/=1) print *,102
print *,'sngg080j : pass'
end

