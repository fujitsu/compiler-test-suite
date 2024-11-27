PROGRAM MAIN
IMPLICIT NONE
character , allocatable :: obj(:)
obj='m'
allocate(obj,mold=obj)
END PROGRAM
