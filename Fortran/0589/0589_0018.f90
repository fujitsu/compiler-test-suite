module m
integer ::x
integer, target :: t=100
end module

use m
if (t /=100) print *,101
x=q()
if (t /=5) print *,102
print *,"Pass"
contains
        integer function q()
        use m
        interface
             function f()
             integer, pointer :: f
             end function
        end interface
        f()=5
        q=1
        end function
end

function f()
 use m
 integer, pointer :: f
 f=>t
end function

