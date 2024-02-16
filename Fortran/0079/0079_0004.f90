module m
interface
module subroutine sub0(i)
end subroutine
end interface
private iii
integer :: err_code =0
end

submodule  (m) smod
interface 
module pure subroutine sub1(i)
integer,intent(inout) :: i
end subroutine
module elemental subroutine sub2(i)
intent(inout) :: i
end subroutine
end interface
contains
module subroutine sub0(i)
i=30
call sub1(ii)
if (ii.ne.10) print *,'err 1'
end subroutine
module pure subroutine sub1(i)
integer :: ii(2)
integer ,intent(inout) :: i
i=10
call sub2(ii)
!if (ii(1).ne.20) err_code =1 !print *,'err 2'
end subroutine
module elemental subroutine sub2(i)
integer,intent(inout) :: i
i=20
if (1.eq.2) call sub1(ii)
!call sub1(iii)
end subroutine
end

use m
call sub0(ii)
if (ii.ne.30) print *,'err 0'
if (err_code.ne.0) print *,'err 2'
print *,'pass'
end

