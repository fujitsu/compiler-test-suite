PROGRAM MAIN
IMPLICIT NONE
integer :: err

CHARACTER (LEN = 5) :: ch
CHARACTER (LEN = :), POINTER:: src

CLASS(*), POINTER :: ptr

ch='fail'

allocate(src, SOURCE=ch//ch, STAT = err)

allocate(ptr,MOLD=src,STAT = err)

if( err .EQ. 0 ) then 
 select type(pp=>ptr)
 type is(character(*))
  if(len(pp)/=10) print*,102
  print *,'pass'
 end select
else
  print *,101
endif 

END PROGRAM MAIN
