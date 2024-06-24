REAL*2,ALLOCATABLE :: CC(:,:)
COMPLEX(KIND=2),ALLOCATABLE :: DD(:,:)
REAL*2::ACT1(3,3)
COMPLEX(2)::ACT2(3,3)
ALLOCATE(CC(3,3))
ALLOCATE(DD(3,3))
CALL SUB(CC(1:3:2,1:3:2),CC,DD(1:3:2,1:3:2),DD)
CALL SUB2(ACT1(1:3:2,1:3:2),ACT2(1:3:2,1:3:2))
PRINT*,"PASS"
CONTAINS
SUBROUTINE SUB(DMY1,DMY2,DMY3,DMY4)
REAL*2 :: DMY1(2,2)
REAL*2,ALLOCATABLE :: DMY2(:,:)
COMPLEX(KIND=2) :: DMY3(2,2)
COMPLEX(KIND=2),ALLOCATABLE :: DMY4(:,:)
IF(IS_CONTIGUOUS(DMY1) .NEQV. .TRUE.)PRINT*,"101"
IF(IS_CONTIGUOUS(DMY2) .NEQV. .TRUE.)PRINT*,"102"
IF(IS_CONTIGUOUS(DMY3) .NEQV. .TRUE.)PRINT*,"103"
IF(IS_CONTIGUOUS(DMY4) .NEQV. .TRUE.)PRINT*,"104"
END SUBROUTINE SUB
SUBROUTINE SUB2(DMY1,DMY2)
REAL*2,CONTIGUOUS :: DMY1(:,:)
COMPLEX(2),CONTIGUOUS :: DMY2(:,:)
IF(IS_CONTIGUOUS(DMY1) .NEQV. .TRUE.)PRINT*,"103"
IF(IS_CONTIGUOUS(DMY2) .NEQV. .TRUE.)PRINT*,"104"
END SUBROUTINE SUB2
END