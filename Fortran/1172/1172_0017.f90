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
    module subroutine k 
      kkk=kkk+1
       if (kkk==0) call x
    end 
end

submodule (m:p) z
contains
    module subroutine  x
     call k
    end 
end

use m
call x()
print *,'sngg079j : pass'
end

