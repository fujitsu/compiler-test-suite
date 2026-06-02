call test1()
print *,'pass'
end      

module mod
allocatable a(:)
pointer     ip(:)
pointer     ips
end
module mod01
use mod ,ba=>a
use mod ,bip=>ip
use mod ,bips=>ips
equivalence (i,j)
contains
subroutine mod01_sub01()
use mod
allocate (a(10))
call inter_sub01()
call inter_sub02()
if (ubound(ba,1).ne.10) print *,'fail'
contains
subroutine inter_sub01()
ba=(/1,2,3,4,5,6,7,8,9,10/)
call inter_sub02()
do i=1,10
 if (a(i).ne.i) print *,'fail'
end do
end subroutine
subroutine inter_sub02()
equivalence(a,ia)
ia=11
end subroutine
end subroutine
end

subroutine test1()
use mod01
call mod01_sub01()
end
