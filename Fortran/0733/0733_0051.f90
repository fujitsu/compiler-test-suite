MODULE e
  TYPE AtomT
     REAL :: Rad
     REAL :: Zeta
     REAL :: Epsilon
     INTEGER :: Index
  END TYPE AtomT
CONTAINS
  SUBROUTINE sub1( Atom )
    IMPLICIT NONE
    TYPE(AtomT), TARGET, INTENT(INOUT) :: Atom(:)
    REAL, POINTER :: Rad(:)
    Rad => Atom(:)%Rad
    Nullify(Rad)
  END SUBROUTINE sub1
END MODULE e
use e
TYPE(AtomT) :: Atom(2)
call sub1(atom)
print *,'pass'
end
