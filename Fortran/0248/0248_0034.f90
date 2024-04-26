PROGRAM MAIN
IMPLICIT NONE
integer :: err

CHARACTER (LEN = 5), target  :: ch
CHARACTER (LEN = :), POINTER :: src

CLASS(*), ALLOCATABLE :: ptr

ch='fail'
allocate(src, SOURCE=ch, STAT = err)
allocate(ptr,MOLD=src,STAT = err)

if( err .EQ. 0 ) then 
 select type(ptr)
  type is(character(*))
  if(len(ptr)/=5) print*,102
  print *,'pass'
 end select
else
  print *,101
endif 

END PROGRAM MAIN
