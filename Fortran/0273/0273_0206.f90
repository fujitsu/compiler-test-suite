REAL(2),POINTER :: PTR1(:)
COMPLEX(2),POINTER :: PTR2(:)
COMPLEX(2),TARGET :: CMP(4)
CMP(3:4)=(1,2)
CMP(1:2)=(3,4)
PTR1=>CMP(3:4)%RE
PTR2=>CMP(1:2)
IF(ANY(PTR1 .NE. 1)) PRINT*,"101"
IF(ANY(PTR2 .NE. (3,4))) PRINT*,"102"
PTR1=5
PTR2=(6,7)
IF(ANY(CMP(3:4)%RE .NE. 5)) PRINT*,"103"
IF(ANY(CMP(1:2) .NE. (6,7))) PRINT*,"104"
PRINT*,"PASS"
END

