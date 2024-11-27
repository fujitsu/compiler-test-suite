PROGRAM MAIN
IMPLICIT NONE
integer :: err

CHARACTER (LEN = 5) :: ch
CHARACTER (LEN = :), POINTER:: src

CLASS(*), POINTER :: ptr

ch = 'a'
allocate(src, SOURCE=ch, STAT = err)
if( err .EQ. 0 ) then 
   print *, "ALLOCATION success to src"
else
  print *, "ALLOCATION failure to src"
endif 

allocate(ptr,SOURCE=src,STAT = err)
if( err .EQ. 0 ) then 
    print *, "ALLOCATION success to ptr"
else
  print *, "ALLOCATION failure to ptr"
endif 

END PROGRAM
