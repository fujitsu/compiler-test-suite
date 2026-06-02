CALL SUB([1.5_2,2.5_2],[1.5_2,2.5_2],[(1,1.5_2),(2.5_2,2.5_2)],[(1.5_2,4),(2.5_2,5)])        
        CONTAINS
        SUBROUTINE SUB(XX,YY,ZZ,BB)
        REAL*2 :: XX(..)
        REAL*2 :: YY(:)
        COMPLEX(2) :: ZZ(..)
        COMPLEX(2) :: BB(:)
        IF(IS_CONTIGUOUS(XX).NEQV..TRUE.)PRINT*,"101"
        IF(IS_CONTIGUOUS(YY).NEQV..TRUE.)PRINT*,"102"
        IF(IS_CONTIGUOUS(ZZ).NEQV..TRUE.)PRINT*,"103"
        IF(IS_CONTIGUOUS(BB).NEQV..TRUE.)PRINT*,"104"
        PRINT*,"PASS"
        END SUBROUTINE
END        
