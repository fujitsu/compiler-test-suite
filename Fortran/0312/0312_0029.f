	subroutine sub()
	type TAG
	SEQUENCE
	real*4 x
	end type
	type(TAG) a,b,c
	equivalence(a,b,c)
	data a%x/1.0/
        c%x=c%x+1
	print *,b
	end
	call sub
	end

