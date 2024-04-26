module m
contains
subroutine sub(t1,t2)
  integer,pointer:: t1,t2
  t1=100
entry ent(t1,t2)
  print *,'ent'
  if ( t2==10 ) then
    t2=300
  else
    t2=200
  end if
end subroutine
end

use m
integer,target  :: t
integer,pointer :: p
logical :: flag
flag=.true.
p=>t
t=10
call sub(p,p)
if ( t .ne. 200 ) then
  flag=.false.
end if

t=10
call ent(p,p)
if ( flag .and. t==300 ) then
  print *,'pass'
else
  print *,'ng',t
end if
end
