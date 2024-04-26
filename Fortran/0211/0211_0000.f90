module m1
 integer,parameter::k2=2
end
LOGICAL FUNCTION real_eq_kind_2(a,b,ulp)
use m1
    IMPLICIT NONE
    REAL(KIND=k2), INTENT (in):: a,b
    REAL(KIND=k2) :: Rel
    INTEGER,        OPTIONAL, INTENT( IN )  :: ulp
    real(4 ):: x
    real(k2):: y
    IF ( PRESENT( ulp ) )  Rel = REAL( ABS(ulp), k2)
    Rel = 1.0_k2
 x=max(abs(a),abs(b))
   y=radix(a)**(exponent(x)-digits(a))

END FUNCTION real_eq_kind_2

print *,'pass'
end
