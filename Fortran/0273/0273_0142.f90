TYPE TY
COMPLEX(2) :: C2_AR(4) = (10,10)     
COMPLEX(2) :: C2 = (2,3)     

REAL(2) :: RES
REAL(2) :: RES_DSB(4)

REAL(2) :: R2 = 1.0
REAL(2) :: R2_AR(4) = 4

INTEGER(1) :: I1(4) = 5
INTEGER(4) :: I4 = 2

REAL(16) :: R16(1) = 10.0

END TYPE

TYPE(TY) :: OBJ

OBJ%RES=(OBJ%R2)**(OBJ%R2)
IF(OBJ%RES .NE. ((1.0)**(1.0)))PRINT*,"101"

OBJ%RES_DSB(2)=(OBJ%R2_AR(3))**(OBJ%R16(1))
IF(OBJ%RES_DSB(2) .NE. (4**(10)))PRINT*,"102"

OBJ%RES=(OBJ%I4)**(OBJ%R2)
IF(OBJ%RES .NE. (2**(1.0)))PRINT*,"103"

OBJ%RES_DSB(3)=(OBJ%R2_AR(1))**(OBJ%I1(1))
IF(OBJ%RES_DSB(3) .NE. (4**5))PRINT*,"104"

OBJ%RES_DSB(4)=(OBJ%C2_AR(2))**(OBJ%R2_AR(2))
IF(OBJ%RES_DSB(4) .NE. ((10,10)**(4)))PRINT*,"105"

OBJ%RES=(OBJ%R2)**(OBJ%C2)
IF(OBJ%RES .NE. ((1.0)**(2,3)))PRINT*,"106"
PRINT*,"PASS"
END