	subroutine sub1(a)
	print *,a + fun1()
	end
	subroutine sub2(a)
	print *,(a+1.0) + fun1()
	end
	subroutine sub3(a)
	print *,a + (fun1()+1.0)
	end
	subroutine sub4(a)
	print *,(a+1.0) + (fun1()+1.0)
	end
	subroutine sub5(a)
	print *,fun2() + a
	end
	subroutine sub6(a)
	print *,(fun2()+1.0) + a
	end
	subroutine sub7(a)
	print *,fun2() + (a+1.0)
	end
	subroutine sub8(a)
	print *,(fun2()+1.0) + (a+1.0)
	end
	call sub1(1.0)
	call sub2(1.0)
	call sub3(1.0)
	call sub4(1.0)
	call sub5(2.0)
	call sub6(2.0)
	call sub7(2.0)
	call sub8(2.0)
	end
	real function fun1()
	fun1 = 2.0
	end
	real function fun2()
	fun2 = 1.0
	end
