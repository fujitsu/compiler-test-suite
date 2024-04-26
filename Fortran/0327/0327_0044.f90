complex,target :: t
complex,pointer :: p
p=>t
t=(10,10)
call sub(t,t)
print *,t
print *,'pass'
contains
subroutine sub(t1,t2)
complex,target :: t1
complex,intent(in),target :: t2
t1=t2
end subroutine
end
