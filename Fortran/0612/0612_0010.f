	common /com/i
	integer*4 i(3)
	real*8    r(1)
	equivalence(i(2),r(1))
	i(1) = 1
	r(1) = 1.0
	print *,loc(r)-loc(i)
	print *,i(1),r(1)
	end
