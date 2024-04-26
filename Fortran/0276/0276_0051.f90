module mo
implicit none
        interface test
                module procedure test1
                module procedure test2
        end interface

contains

        function test1(ditrg1)
                integer,pointer::test1
                integer,target::ditrg1
                test1=>ditrg1
        end function

        function test2(drtrg2)
                real, pointer::test2(:)
                real,target::drtrg2(2)
                test2=>drtrg2
        print*,"105"
        end function

end module

use mo
implicit none
integer,target :: citrg1=100
if (citrg1 /= 100) print *,101
open(newunit=test1(citrg1),status='scratch')
if (citrg1 == 100) print *,103,citrg1
if(citrg1>=-1)print*,"104",citrg1
print *,"Pass"
end program
