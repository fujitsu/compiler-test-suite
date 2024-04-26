	real*16 function fun()
	real*16,parameter::a=1.23456
	fun = a
	end
	recursive real*16 function rfun()
	real*16,parameter::a=1.23456
	rfun = a
	end
	real*16 fun,rfun,res
	res = fun()
	print *,res
	res = rfun()
	print *,res
	end
