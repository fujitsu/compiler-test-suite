module mo
implicit none
integer,target::itrg1=10
double precision,target::itrg2=11.111
character, target::ctrg='a'
        interface test
                module procedure test1
                module procedure test2
        end interface

contains
        
        function test1(dtrg)
                integer,pointer::test1
                integer,target::dtrg
                test1=>dtrg
        end function
        
        function test2(dtrg)
                double precision, pointer::test2
                double precision,target::dtrg
                test2=>dtrg
        end function
        
end module

use mo
implicit none
if (itrg1 /= 10) print *,101
if (itrg2 /= 11.111) print *,102
test(itrg1)=100
test(itrg2)=500.55
if (itrg1 /= 100) print *,103
if (itrg2 /= 500.55) print *,104
print *,"Pass"
end program
