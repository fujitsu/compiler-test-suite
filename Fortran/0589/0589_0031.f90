module m
    procedure(pqr),pointer ::ptr 
    integer, target::tar=1000
contains
        function pqr()
        integer, pointer::pqr
        pqr=>tar
        end function
end module

use m
integer::a=10
ptr=>pqr
if(tar /=1000)print*,102
ptr()=100+a
if(tar /=110)print*,101
print *,"Pass"
end

