        REAL*2, ALLOCATABLE :: A(:), B(:)
        ALLOCATE(A(3))
        A = [ 1.0_4, 2.0_4, 3.0_4 ]
        CALL MOVE_ALLOC(A, B)
        IF(ALLOCATED(A) .NEQV. .FALSE.) PRINT*,"101"
        IF(ALLOCATED(B) .NEQV. .TRUE.) PRINT*,"102"
        IF(B(1)/=1.0_4) PRINT*,"103"
        IF(B(2)/=2.0_4) PRINT*,"104"
        IF(B(3)/=3.0_4) PRINT*,"105"
        CALL SUB(A)
        PRINT *, "PASS"
        CONTAINS
        SUBROUTINE SUB(X)
         REAL*2,ALLOCATABLE::X(:),Y(:)
         ALLOCATE(X(3))
         X = [ 1.0_4, 2.0_4, 3.0_4 ]
         CALL MOVE_ALLOC(X,Y)
         IF(ALLOCATED(X) .NEQV. .FALSE.) PRINT*,"106"
         IF(ALLOCATED(Y) .NEQV. .TRUE.) PRINT*,"107"
         IF(Y(1)/=1.0_4) PRINT*,"108"
         IF(Y(2)/=2.0_4) PRINT*,"109"
         IF(Y(3)/=3.0_4) PRINT*,"110"
         END SUBROUTINE SUB
        END
