Module m
integer,target::atar=4
contains
        function fun (dtar) result (res)
        integer,target::dtar
        integer,pointer::res
        res=>dtar
        end function
end module

use m
if (atar /=4) print *,101
open(NEWUNIT = fun(atar),status='scratch')
if(atar .eq. 4)print*,"102"
if (atar >= -1) print *,"103",atar
print *,"Pass"
end
