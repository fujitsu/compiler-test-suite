PROGRAM MAIN
IMPLICIT NONE
integer :: err
COMPLEX :: src(10)
CLASS(*), POINTER:: ptr(:)
src = (2.0, 4.0)
src(4)=(1.0, 2.0)
allocate(ptr(10),SOURCE=src,STAT = err)
if( err .EQ. 0 ) then 
    print *, "ALLOCATION success to ptr"
else
    print *, "ALLOCATION failure to ptr"
endif 

END PROGRAM