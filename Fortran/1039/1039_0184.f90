module m1
contains
subroutine sub()
integer,pointer,dimension(:)::p1
return
entry e0()
return
entry e1(p1)
p1=(/1,2/)
return
entry e2(p1)
allocate(p1(2))
return
entry e3(p1)
deallocate(p1)
end subroutine
end
use m1
integer,pointer,dimension(:)::p1
call sub
call e0
call e2(p1)
call e1(p1)
if (any(p1/=(/1,2/)))print *,'error'
call e3(p1)
if (associated(p1))print *,'error-2'
print *,'pass'
end
