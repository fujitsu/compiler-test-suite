integer,target  :: t
integer,pointer :: p
p=>t
t=10
call sub(p,p)
if ( t==200 ) then
  print *,'pass'
else
  print *,'ng'
end if
contains

subroutine sub(t1,t2)
  integer,pointer:: t1,t2
  t1=100
  t2=200
end subroutine
end
