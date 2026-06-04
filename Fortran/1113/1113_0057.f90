module mo
implicit none
integer,target::itrg1=10
real,target::rtrg2(2)=11.5
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
        end function

end module

use mo
implicit none
integer :: citrg1=100
real :: crtrg2(2)=50.5
if (itrg1 /= 10) print *,101
if (any(rtrg2 /= 11.5)) print *,102
write(54,*)citrg1
write(55,*)crtrg2
rewind(54)
rewind(55)
read(54,*)test(itrg1)
read(55,*)test(rtrg2)
if (itrg1 /= 100) print *,103
if (any(rtrg2 /= 50.5)) print *,104
print *,"Pass"
end program
