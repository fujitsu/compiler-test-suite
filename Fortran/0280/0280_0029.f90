MODULE M
CONTAINS
SUBROUTINE S(DMY1,DMY2)
 REAL(2) :: DMY1(2)
 COMPLEX(2) :: DMY2(3)
 IF(ANY(DMY1 .NE. 6.0))PRINT*,"101"   
 IF(ANY(DMY2 .NE. (7,8)))PRINT*,"102"   
 PRINT*,"PASS"
END SUBROUTINE
END MODULE

USE M
REAL(2)::R2=6
COMPLEX(2)::C2=(7,8)
CALL S((/R2,R2/),(/C2,C2,C2/))
END