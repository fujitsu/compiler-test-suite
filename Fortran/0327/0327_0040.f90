integer,allocatable,dimension (:)::p
allocate (p(5))
call sub(p,p)
if ( p(3)==2 ) then
  print *,'pass'
else
  print *,'ng'
end if
contains

subroutine sub(p1,p2)
  integer ,allocatable,dimension(:) :: p1,p2
  p1(3)=1
  p2(3)=2
 end subroutine
end
