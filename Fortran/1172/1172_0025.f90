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
     if (k()/=1) print *,121
print *,'sngg087j : pass'
end

