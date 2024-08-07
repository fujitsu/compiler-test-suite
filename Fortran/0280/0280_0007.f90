REAL*2,ALLOCATABLE::R2
REAL*2,ALLOCATABLE::RR2(:)
COMPLEX(KIND=2),ALLOCATABLE::C2
COMPLEX(KIND=2),ALLOCATABLE::CC2(:)
ALLOCATE(R2,RR2(4),C2,CC2(5))
CALL SUB(R2,RR2,C2,CC2)
IF(ALLOCATED(R2) .NEQV. .FALSE.)PRINT*,"101"
IF(ALLOCATED(RR2) .NEQV. .FALSE.)PRINT*,"102"
IF(ALLOCATED(C2) .NEQV. .FALSE.)PRINT*,"103"
IF(ALLOCATED(CC2) .NEQV. .FALSE.)PRINT*,"104"

PRINT*,"PASS"
CONTAINS
SUBROUTINE SUB(D1,D2,D3,D4)
REAL*2,ALLOCATABLE,INTENT(OUT)::D1
REAL*2,ALLOCATABLE,INTENT(OUT)::D2(:)
COMPLEX(KIND=2),ALLOCATABLE,INTENT(OUT)::D3
COMPLEX(KIND=2),ALLOCATABLE,INTENT(OUT)::D4(:)
IF(ALLOCATED(D1) .NEQV. .FALSE.)PRINT*,"201"
IF(ALLOCATED(D2) .NEQV. .FALSE.)PRINT*,"202"
IF(ALLOCATED(D3) .NEQV. .FALSE.)PRINT*,"203"
IF(ALLOCATED(D4) .NEQV. .FALSE.)PRINT*,"204"
END SUBROUTINE

END
