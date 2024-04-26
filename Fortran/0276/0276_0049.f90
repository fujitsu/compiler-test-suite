integer,pointer::a(:)
procedure(fun),pointer::ptr
allocate(a(5))
a=5
ptr=>fun
open(file='fort.2',newunit=ptr(all(a(1:5:1) .eq. (/10,10,10,10,10/)),a(2)))
if (a(2) .eq. 5)print *,101
if(a(2) >= -1)print*,"102"

if(a(1) .ne. 5)print*,"103"
close( a(2),status="delete")
open(newunit=fun(a(1)==10,a(1)),file='fort.3')
if (a(1) .eq. 5)print *,"104"
if(a(1) >= -1)print*,"105"
close( a(1),status="delete")
print *,"Pass"
contains
       function fun(dum,darr)
        integer, pointer::fun
        logical::dum
        integer,target::darr
        if(dum .eqv. .true.)then
        allocate(fun)
        else
        fun=>darr
        end if
       end function
end
