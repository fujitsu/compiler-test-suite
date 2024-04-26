        SUBROUTINE    EX0( CABSZ )
        REAL CABSZ
        print *,CABSZ ((1.2345E0,1.2345E0))
        print *,CABS  ((1.2345E0,1.2345E0))
        RETURN
        END
        INTRINSIC CABS
        CALL EX0( CABS )
	PRINT *,'PASS'
        end
