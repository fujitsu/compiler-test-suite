MODULE mood

TYPE tata
 INTEGER :: vehicles
END TYPE

TYPE, EXTENDS(tata) :: cars
 INTEGER :: nano
END TYPE

CLASS(tata),ALLOCATABLE :: raja(:)

END MODULE
print*,'pass'
end
