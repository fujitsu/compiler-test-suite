SUBROUTINE ASINH_TEST01()
	IMPLICIT NONE
	
	REAL(KIND = 4) :: R4_X = 0-HUGE(R4_X)
	REAL(KIND = 4) :: R4_RESULT
	REAL(KIND = 4) :: R4_COMPARE

	R4_RESULT = ASINH(R4_X)
	R4_COMPARE = LOG(R4_X + SQRT(R4_X * R4_X + 1))

	print *,r4_result
	print *,r4_compare
	print *,r4_x

END SUBROUTINE

SUBROUTINE ASINH_TEST04()
	IMPLICIT NONE
	
	COMPLEX(4) :: C4_X
	COMPLEX(4) :: C4_RESULT, C4_COMPARE
	REAL(4), PARAMETER :: FORHUGE = HUGE(FORHUGE)
	
	C4_X = (FORHUGE, FORHUGE)
	
	C4_RESULT = ACOSH(C4_X)
	C4_COMPARE = LOG(C4_X + SQRT(C4_X * C4_X + 1))

	print *
	print *,c4_result
	print *,c4_compare
	print *,c4_x


END SUBROUTINE

PROGRAM MAIN
	IMPLICIT NONE
	
print *,'pass'
END PROGRAM