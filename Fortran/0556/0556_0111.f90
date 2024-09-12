PROGRAM main

TYPE tata
 INTEGER :: vehicles=0
END TYPE

TYPE, EXTENDS(tata) :: cars
 INTEGER :: nano=0
END TYPE

CLASS(tata),ALLOCATABLE :: raja(:)
TYPE(tata)::src(2)
src(1)%vehicles=1
allocate(raja,SOURCE=src)
print*,'pass'
END
