TYPE :: P1
INTEGER :: X
END TYPE 

TYPE, EXTENDS(P1) :: P2
INTEGER :: COLOR
END TYPE 

real::r1
TYPE(P2), TARGET :: tar2
CLASS(P1), POINTER :: ptr
tar2%X=10
ptr => tar2
SELECT TYPE ( A => ptr )
CLASS IS ( P1 )
open(FILE='fort.23',NEWUNIT=A%X,ACTION='write')
write(A%X,*)50.50
close(A%X)
open(ACTION='read',FILE='fort.23',NEWUNIT=A%X)
read(A%X,*)r1
close(A%X)
if (r1/=50.50)print*,"error:101"
END SELECT
print*,"pass"
end
