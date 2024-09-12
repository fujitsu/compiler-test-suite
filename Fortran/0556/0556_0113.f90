PROGRAM main

INTEGER :: kak(2)
CLASS(*),ALLOCATABLE :: ram(:)
kak=2
ALLOCATE(ram, SOURCE=kak)
print*,sizeof(ram),'pass'
END
