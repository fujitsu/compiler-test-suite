REAL*2 :: A(5)
COMPLEX(2) :: B(5)
CALL SUB(A(1:5:2),A(1:5:2),B(1:5:2),B(1:5:2))        
        CONTAINS
        SUBROUTINE SUB(XX,YY,ZZ,BB)
        REAL*2,target :: XX(..),YY(:)
        COMPLEX(2),target ::ZZ(..),BB(:)
        IF(IS_CONTIGUOUS(XX).NEQV..FALSE.)PRINT*,'101'
        IF(IS_CONTIGUOUS(YY).NEQV..FALSE.)PRINT*,'102'
        IF(IS_CONTIGUOUS(ZZ).NEQV..FALSE.)PRINT*,'103'
        IF(IS_CONTIGUOUS(BB).NEQV..FALSE.)PRINT*,'104'
        PRINT*,'PASS'
        END SUBROUTINE
END        
