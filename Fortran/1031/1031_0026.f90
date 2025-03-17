subroutine xx(P1,P2,P3)
Complex(4), Allocatable, Save :: FCTemp (:, :)
Real(4),    Pointer,     Save :: Kernel (:, :, :)
Complex(4), Pointer,     Save :: FCImage (:, :)
Integer :: P1,P2,P3
Integer :: Level
Integer :: ShiftRow, ShiftCol
Real(4) :: DC
Integer,      Save :: IShape (2) = 0
Integer            :: RowLen, ColLen
Equivalence (Ishape(1), RowLen)
Equivalence (IShape(2), ColLen)
RowLen=P1
ColLen=P2
K1=P1
K2=P2
K3=P3
ShiftRow=1
ShiftCol=1
Level=2
DC=3.
Allocate (FCTemp (ColLen, RowLen))
Allocate (FCImage(ColLen, RowLen))
Allocate (Kernel (K1,K2,k3))
     FCTemp = FCImage &
 &         * (CSHIFT(CSHIFT(Kernel (:, :, Level),ShiftRow,1),ShiftCol,2) &
 &                   - DC * Kernel (:, :, Level))

end
print *,'pass'
end
