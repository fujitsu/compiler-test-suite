PROGRAM main

TYPE tata
 INTEGER :: vehicles
END TYPE

TYPE, EXTENDS(tata) :: cars
 INTEGER :: nano
END TYPE

CLASS(tata),ALLOCATABLE :: raj
ALLOCATE(raj)
print*,'pass'

END
