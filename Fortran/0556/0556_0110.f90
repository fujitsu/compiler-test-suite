PROGRAM main

TYPE tata
 INTEGER :: vehicles
END TYPE

TYPE, EXTENDS(tata) :: cars
 INTEGER :: nano
END TYPE

CLASS(tata),pointer :: driver(:)
TYPE(cars), TARGET :: conductor(4)

driver => conductor

print*,'pass'
END