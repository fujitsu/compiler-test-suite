LOGICAL FUNCTION real_eq_kind_2(a,b,ulp)
    IMPLICIT NONE
    REAL(KIND=2), INTENT (in):: a,b
    REAL(KIND=2) :: Rel
    REAL(KIND=2) ,EXTERNAL:: SPACING

    INTEGER,        OPTIONAL, INTENT( IN )  :: ulp
    IF ( PRESENT( ulp ) )  Rel = REAL( ABS(ulp), 2)
    Rel = 1.0_2
    real_eq_kind_2 = ABS( a - b ) < ( Rel * SPACING( MAX(ABS(a),ABS(b))) )
END FUNCTION real_eq_kind_2
print *,'pass'
end
    REAL(KIND=2) function SPACING( d1 )
    REAL(KIND=2) :: d1
    SPACING=d1
    end
