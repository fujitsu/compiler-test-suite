module m
interface
module subroutine x()
end
end interface
integer::kkk=0
end

submodule (m) p
interface
module subroutine k()
end
end interface
end

submodule (m:p) w
contains
    module procedure k 
      kkk=kkk+1
       if (kkk==0) call x
    end 
end

submodule (m:p) z
contains
    module procedure  x
     call k
    end 
end

use m
call x()
print *,'sngg078j : pass'
end

