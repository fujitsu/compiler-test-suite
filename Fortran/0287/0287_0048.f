	real*4 function fun4()
	fun4 = 1.0
	end
	real*8 function fun8()
	external fun4
	fun8 = fun4()
	end
	real*8 fun8
	print *,fun8()
	end
