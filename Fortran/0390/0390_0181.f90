PROGRAM MAIN
	IMPLICIT NONE
	
	COMPLEX(4) :: C4_X
	COMPLEX(4) :: C4_RESULT, C4_COMPARE
	REAL(4), PARAMETER :: FORHUGE = HUGE(FORHUGE)
	
	C4_X = (FORHUGE, FORHUGE)
	
	C4_RESULT = ATANH(C4_X)
print *,'pass'
stop
	C4_COMPARE = 1.0/2.0*LOG((1+C4_X)/(1-C4_X))

	print *,c4_compare
	print *,c4_result
	print *,FORHUGE
	print *,c4_x

END PROGRAM

