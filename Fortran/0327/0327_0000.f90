integer,target  :: t
integer,pointer :: p
p=>t
t=10
call sub(p,p)
write(2,*) t
print *,'pass'
contains

subroutine sub(t1,t2)
  integer,pointer:: t1,t2
  t1=100
  t2=200
end subroutine
end
