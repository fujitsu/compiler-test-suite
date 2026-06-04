module m
integer::kkk
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
end

submodule (m:n) w
contains
    module procedure k 
    k=1
     kkk=1
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
     if (x()/=1) print *,102
if (kkk/=1)print *,10001
print *,'sngg082j : pass'
end

