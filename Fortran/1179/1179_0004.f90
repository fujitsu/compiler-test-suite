         module m2
interface
module function  f1(xxx)
             integer,intent(in) :: xxx
             character(len=xxx) f1
end
end interface
         procedure(f1),pointer::f
end
submodule (m2) smod
contains
module procedure f1
             f1='12'
end

         end
        subroutine sub2()
        use m2
        character(len=2) y
        y=f(2)
        if (y/='12') print *,202
        end
use m2
f=>f1
call sub2
print *,'sngg461i : pass'
end

