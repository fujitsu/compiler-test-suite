character,target :: t
character,pointer :: p
p=>t
t='1'
call sub(t,t)
write(3,*) t
print *,'pass'
contains
subroutine sub(t1,t2)
character,target :: t1
character,intent(in),target :: t2
t1=t2
end subroutine
end
