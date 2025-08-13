 integer:: stat
 integer,allocatable,dimension(:) :: x
 call sub(x,stat,stat)
 print *,x
 print *,'pass'
contains

 subroutine sub(b,stat1,stat2)
 integer,allocatable,dimension(:):: b
 integer :: stat1,stat2
 allocate(b(5),stat=stat1)
 b=10
 print *,b
 stat2=1
 write(20,*) stat1,stat2
 end subroutine
 end
