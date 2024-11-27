module m1
procedure(fun),pointer,protected::nullify=>fun
integer,pointer::rr
contains
        function fun(r)
        integer::fun,r
        fun=r
        end function
end module

use m1 
allocate(rr)
rr=11
if(nullify(rr) /= 11) print*,101
print *,"Pass"
end
