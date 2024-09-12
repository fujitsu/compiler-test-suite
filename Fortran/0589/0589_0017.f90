module m1
integer,target::t=10
contains
        function f()
        integer,pointer::f
        f=>t
        end function
end module

use m1
if (t /=10) print *,101
f()=10000
if (t /=10000) print *,102
print *,"Pass"
end
