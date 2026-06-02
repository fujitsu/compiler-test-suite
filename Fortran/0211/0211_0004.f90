module m1
 integer,parameter::k2=2
end
LOGICAL FUNCTION real_eq_kind_2(a,b,ulp)
use m1
    IMPLICIT NONE
    REAL(KIND=k2), INTENT (in):: a,b
    REAL(KIND=k2) :: Rel
    INTEGER,        OPTIONAL, INTENT( IN )  :: ulp
    IF ( PRESENT( ulp ) )  Rel = REAL( ABS(ulp), k2)
    Rel = 1.0_k2
   real_eq_kind_2 = ABS( a - b ) < ( Rel * SPACING( MAX(ABS(a),ABS(b))) )
END FUNCTION real_eq_kind_2

print *,'pass'
end
