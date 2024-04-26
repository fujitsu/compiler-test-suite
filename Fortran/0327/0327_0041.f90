module m
contains

subroutine sub(p1,p2)
  integer ,allocatable,dimension(:) :: p1,p2
  p1(3)=1
entry ent(p1,p2)
  print *,'ent'
  if(p1(3) .ne. 1 ) then
    p2(3)=3
  else
    p2(3)=2
  end if
end subroutine
end

use m
integer,allocatable,dimension (:)::p
logical :: flag
flag=.true.
allocate (p(5))
call sub(p,p)
if ( p(3) .ne. 2 ) then
  flag=.false.
end if

call ent(p,p)
if ( flag .and. p(3)==3 ) then
  print *,'pass'
else
  print *,'ng',p
end if
end
