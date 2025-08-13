integer,target :: t(4),d(4)
integer,pointer :: p(:)
d=(/1,3,3,4/)
p=>t
t=10
t(d)=20
call sub(t,t)
write(7,*) t
print *,'pass'
contains

subroutine sub(t1,t2)
integer,target :: t1(:),t2(:)
t1=100
t2=200
end subroutine
end
