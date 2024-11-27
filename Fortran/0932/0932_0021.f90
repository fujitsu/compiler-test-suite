module m1
procedure(fun),bind(c),pointer,protected,public,save::ptr=>fun
contains
        function fun() result (res) bind(c) 
        integer::res
        res = 300
        end function
end module 

use m1
if (ptr() /= 300) print *,101
print *,"Pass"
end
