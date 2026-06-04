RECURSIVE FUNCTION integrate(n) RESULT(rv)
    IMPLICIT NONE
    DOUBLE PRECISION :: rv
    INTEGER, INTENT(IN) :: n
    DOUBLE PRECISION, PARAMETER :: minusone = -1.0
    procedure(DOUBLE PRECISION),pointer::ptrintegrate=>integrate
    IF (n == 1) THEN
        rv = 10
        RETURN
    ELSE
        rv = 1 - (n * ptrintegrate(n - 1))
        RETURN
    END IF
END FUNCTION integrate

RECURSIVE FUNCTION factorial(n) RESULT(res)
    INTEGER res, n
    procedure(INTEGER),pointer::ptrfactorial=>factorial
    IF (n .EQ. 0) THEN
        res = 1
    ELSE
        res = n * ptrfactorial(n - 1)
    END IF
END
PROGRAM main
    IMPLICIT NONE
    DOUBLE PRECISION, EXTERNAL :: integrate
    INTEGER, EXTERNAL :: factorial
    procedure(INTEGER),pointer::ptrfactorial=>factorial
    procedure(DOUBLE PRECISION),pointer::ptr2=>integrate

    if(ptrfactorial(5).ne.120)print*,"101"
    if(ptr2(2).ne.-19)print*,"102"
    print*,"PASS"
END PROGRAM main


