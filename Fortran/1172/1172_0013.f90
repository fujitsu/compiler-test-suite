module m
integer::kkk
interface
module subroutine x()
end
end interface
interface
module subroutine k()
end
end interface
end

submodule (m) n
interface
module subroutine k()
end
end interface
end

submodule (m) w
contains
    module subroutine k 
     kkk=1
    end 
end

submodule (m) z
contains
    modulesubroutine x
     call k
    end 
end

use m
call x()
if (kkk/=1)print *,10001
print *,'sngg075j : pass'
end

