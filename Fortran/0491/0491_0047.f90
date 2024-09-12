module m1
 integer,parameter::k2=4
contains

LOGICAL FUNCTION real_eq_kind_2(a,b,ulp)
    IMPLICIT NONE
    REAL(KIND=k2), INTENT (in):: a,b
    REAL(KIND=k2) :: Rel
    INTEGER,        OPTIONAL, INTENT( IN )  :: ulp
    Rel = 1.0_k2
    IF ( PRESENT( ulp ) )  Rel = REAL( ABS(ulp), k2)
   real_eq_kind_2 = ABS( a - b ) < ( Rel * SPACING( MAX(ABS(a),ABS(b))) )
END FUNCTION real_eq_kind_2
end

use m1
    IMPLICIT NONE
    REAL(KIND=k2):: a,b
    INTEGER  :: u
a=0.1
b=0.1
if(.not.real_eq_kind_2(a,b)) print *,101
a=0.1
b=0.1
u=1
if(.not.real_eq_kind_2(a,b,u)) print *,102
print *,'pass'
end
