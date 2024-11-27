PROGRAM MAIN
IMPLICIT NONE
integer :: err
integer :: src(10) 
CLASS(*), POINTER:: ptr(:)
src=20
src(1)=10
allocate(ptr(10), SOURCE=src, STAT=err)
if( err .EQ. 0 ) then 
    print *, "ALLOCATION success to ptr"
else
    print *, "ALLOCATION failure to ptr"
endif 

END PROGRAM
