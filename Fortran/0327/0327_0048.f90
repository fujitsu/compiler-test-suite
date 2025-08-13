integer,target :: t
integer,pointer :: p
p=>t
t=10
call sub(t,t)
write(4,*) t
print *,'pass'
contains
subroutine sub(t1,t2)
integer,target :: t1
integer,intent(in),target :: t2
t1=t2
end subroutine
end
