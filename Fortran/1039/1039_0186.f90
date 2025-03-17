module m1
contains
subroutine sub(p1,p2,p3)
integer,pointer,optional,dimension(:)::p1,p2,p3
return
entry e0(p1,p2,p3)
return
entry e1(p1,p2,p3)
p1=(/1,2/)
p2=(/1,2/)
p3=(/1,2/)
return
entry e2(p1,p2,p3)
allocate(p1(2),p2(2),p3(2))
return
entry e3(p1,p2,p3)
deallocate(p1,p2,p3)
entry e4(p1,p2,p3)
end subroutine
end
use m1
integer,pointer,dimension(:)::p1,p2,p3
call sub
call e0
call e2(p1,p2,p3)
call e1(p1,p2,p3)
if (any(p1/=(/1,2/)))print *,'error'
if (any(p2/=(/1,2/)))print *,'error'
if (any(p3/=(/1,2/)))print *,'error'
call e3(p1,p2,p3)
if (associated(p1))print *,'error-2'
if (associated(p2))print *,'error-2'
if (associated(p3))print *,'error-2'
call e4()
print *,'pass'
end
