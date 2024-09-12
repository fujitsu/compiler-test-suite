module m1
integer ::nn=0
contains
subroutine sub5()
entry     sub6
nn=nn+1
end subroutine
recursive subroutine xx(sub1)
interface
 subroutine sub1()
 end subroutine
 subroutine subz()
 end subroutine
end interface

procedure (sub1), pointer :: p1
procedure (sub2), pointer :: p2
procedure (sub3), pointer :: p3
procedure (sub4), pointer :: p4
procedure (sub5), pointer :: p5
procedure (sub6), pointer :: p6

p1=>sub1
if (.not.associated(p1,sub1))print *,'error-1'
if (.not.associated(p1,subz))print *,'error-2'
if (.not.associated(p1     ))print *,'error-4'
nn=0
call p1
call sub1
call subz
if (nn/=3)print *,'error-3'
p2=>sub2
if (.not.associated(p2,sub2))print *,'error-11'
if (.not.associated(p2     ))print *,'error-12'
nn=0
call p2
call sub1
if (nn/=2)print *,'error-13'
p3=>sub3
if (.not.associated(p3,sub3))print *,'error-21'
if (.not.associated(p3     ))print *,'error-22'
nn=0
call p3
call sub3
if (nn/=2)print *,'error-23'
p4=>sub4
if (.not.associated(p4,sub4))print *,'error-41'
if (.not.associated(p4     ))print *,'error-42'
nn=0
call p4
call sub4
if (nn/=2)print *,'error-43'
p5=>sub5
if (.not.associated(p5,sub5))print *,'error-51'
if (.not.associated(p5     ))print *,'error-52'
nn=0
call p5
call sub5
if (nn/=2)print *,'error-53'
p6=>sub6
if (.not.associated(p6,sub6))print *,'error-61'
if (.not.associated(p6     ))print *,'error-62'
nn=0
call p6
call sub6
if (nn/=2)print *,'error-63'
 return
entry sub4
nn=nn+1
end subroutine
subroutine sub2()
entry     sub3
nn=nn+1
end subroutine
end
use m1
external subz
call xx(subz)

print *,'pass'
end

subroutine subz()
use m1
nn=nn+1
end subroutine
