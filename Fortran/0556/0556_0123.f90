MODULE jood

TYPE tata
 INTEGER :: vehicles
END TYPE

TYPE, EXTENDS(tata) :: cars
 INTEGER :: nano
END TYPE

CLASS(tata),ALLOCATABLE :: raj

END module
print*,'pass'
end
