module m
integer::kkk
interface
module function x()
end
end interface
interface
module function k()
end
end interface
end

submodule (m) n
interface
module function k()
end
end interface
end

submodule (m) w
contains
    module function k()
     k=1
     kkk=1
    end 
end

submodule (m) z
contains
    module function x()
     x=1
     if (k()/=1) print *,101
    end 
end

use m
     if (x()/=1) print *,102
if (kkk/=1)print *,10001
print *,'sngg085j : pass'
end

