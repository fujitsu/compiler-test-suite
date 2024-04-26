type ty
integer::num
end type
call sub()
contains
subroutine sub()
type(ty)::arr(2)
integer,pointer::ptr
integer,target,save::t1=1
DATA (arr(i),i=1,2),ptr /ty(1),ty(2),t1/
if(arr(1)%num.ne.1)print*,"102"
if(arr(2)%num.ne.2)print*,"102"
if(ptr.ne.1)print*,"103"
if(t1.ne.1)print*,"103"
print*,"PASS"
end subroutine
end
