integer:: stat1,stat2
integer,allocatable,dimension(:) :: x
call sub(x,stat1,stat2)
if ( x(1)==10) then 
  print *,'pass'
else
  print *,'ng'
end if
contains

subroutine sub(b,stat1,stat2)
 integer,allocatable,dimension(:):: b
 integer :: stat1,stat2
 allocate(b(5),stat=stat1)
 b=10
 stat2=1
 print *,stat1,stat2
 end subroutine
end
