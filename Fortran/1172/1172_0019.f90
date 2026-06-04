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
    module function k() 
    k=1
    end 
end

submodule (m:n) z
contains
    module function x()
     x=1
     if (k()/=1) print *,101
    end 
end

use m
if ( x()/=1) print *,201
print *,'sngg081j : pass'
end

