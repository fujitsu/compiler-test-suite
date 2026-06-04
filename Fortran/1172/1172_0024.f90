module m
interface
module function k()
end
module function x()
end
end interface
end

submodule (m) n
contains
    module procedure k 
k=1
    end 
end

submodule (m:n) z
contains
    module procedure x
x=1
     if (k()/=1) print *,101
    end 
end

use m
     if (k()/=1) print *,121
print *,'sngg086j : pass'
end

