PROGRAM MAIN
IMPLICIT NONE
integer  :: err
integer, POINTER  :: src
integer, ALLOCATABLE   :: var(:)

allocate(src, STAT = err)

src=10

allocate(var(10), MOLD=src, STAT = err)
if( err .EQ. 0 ) then 
  if(size(var)/=10) print*,103
  print*,'pass'
else
  print *,101
endif 

END PROGRAM MAIN
