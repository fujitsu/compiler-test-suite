TYPE :: P1
INTEGER :: ARR(4)
END TYPE 

TYPE, EXTENDS(P1) :: P2
character(LEN=7)::ch
END TYPE 

TYPE(P2)::obj
CLASS(P1), POINTER :: ptr
ALLOCATE(P1::ptr)

SELECT TYPE ( A => ptr )
CLASS IS ( P1 )
open(FORM='UNFORMATTED',FILE='fort.24',NEWUNIT=A%ARR(3),SIGN='PLUS')
write(A%ARR(3))"fortran"
close(A%ARR(3))
open(FORM='UNFORMATTED',ACTION='read',FILE='fort.24',NEWUNIT=A%ARR(1),SIGN='PLUS')
read(A%ARR(1))obj%ch
close(A%ARR(1))
END SELECT
print*,"pass"
end
