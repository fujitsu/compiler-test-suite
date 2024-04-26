integer,target :: t
integer,pointer :: p
p=>t
t=10
call sub(t,t)
write(1,*) t
print *,'pass'
contains
subroutine sub(t1,t2)
integer:: t1
integer:: t2
t1=100
t2=200
end subroutine
end
