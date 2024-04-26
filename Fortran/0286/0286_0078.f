	common /com/a,b
	call sub
	print *,a+b
	end
	subroutine sub
	common /com/a,b
	a=1
	b=2
	end

