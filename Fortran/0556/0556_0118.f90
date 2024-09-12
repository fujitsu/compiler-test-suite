MODULE mood

TYPE tata
 INTEGER :: vehicles
END TYPE

TYPE, EXTENDS(tata) :: cars
 INTEGER :: nano
END TYPE

CLASS(tata),pointer :: driver(:)

END MODULE
print*,'pass'
end
