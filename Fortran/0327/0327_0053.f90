module m
contains
subroutine sub(t1,t2)
integer,target :: t1,t2
t1=100
entry ent(t1,t2)
t2=200+t1
end subroutine
end

use m
integer,target :: t
integer,pointer :: p
p=>t
t=10
call sub(t,t)
call ent(t,t)
if(t==500) then
  print *,'pass'
else
  print *,'ng'
end if
end
