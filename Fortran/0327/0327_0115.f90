module m
contains
subroutine sub(a)
  integer :: a
  a=10
entry ent(a)
  if ( a==1) then
    a=20
  end if
end subroutine
end

use m
integer :: a
logical :: flag
flag=.true.
a=1
call sub(a)
if ( a .ne. 10 ) then
  flag=.false.
end if
a=1
call ent(a)
if ( flag .and. a==20) then
  print *,'pass'
else
  print *,'ng',a
end if
end
