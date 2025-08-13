module m
contains
subroutine sub(b,stat1,stat2)
 integer,allocatable,dimension(:):: b
 integer :: stat1,stat2
print *,'sub:'
entry ent(b,stat1,stat2)
 allocate(b(5),stat=stat1)
 b=10
 stat2=1
 write(36,*) stat1,stat2
 end subroutine
end 

use m
integer:: stat1,stat2
integer,allocatable,dimension(:) :: x
logical :: flag
flag=.true.
call sub(x,stat1,stat1)
if ( x(1) .ne. 10) then 
flag=.false.
end if
call ent(x,stat2,stat2)
  print *,'pass'
end
