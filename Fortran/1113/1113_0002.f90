module mo
implicit none
integer,target::itrg1=10
character(len=4),target ::ctrg1="test"
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
                character(len=:), pointer::test2
                character(len=4),target::drtrg2
                test2=>drtrg2
        end function

end module

use mo
implicit none
character(len=:), target, allocatable::trg(:)
character(len=:), target, allocatable::ctrg(:)
character(len=:), target, allocatable::rtrg(:)
integer :: ii=6
if(test(ii) .ne. 6)print*,"101"
allocate(character(len=3)::trg(2),ctrg(3),rtrg(2),stat=test(ii),errmsg=test("dist"))
if(ii .eq. 6)print*,"103"
if(ii .ne. 0)print*,"104"
if(test("dist") .ne. "dist")print*,"105"
test(ii)=10
if(ii .ne. 10)print*,"106"
deallocate(trg,ctrg,rtrg,stat=test(ii),errmsg=test("note"))
if(ii .ne. 0)print*,"107"
if(test("note") .ne. "note")print*,"108"
print *,"Pass"
end program
