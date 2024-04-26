	subroutine sub1(a)
	print *,a - fun1()
	end
	subroutine sub2(a)
	print *,(a-1.0) - fun1()
	end
	subroutine sub3(a)
	print *,(1.0-a) - fun1()
	end
	subroutine sub4(a)
	print *,a - (fun1()-1.0)
	end
	subroutine sub5(a)
	print *,a - (1.0-fun1())
	end
	subroutine sub6(a)
	print *,(a-1.0) - (fun1()-1.0)
	end
	subroutine sub7(a)
	print *,(1.0-a) - (fun1()-1.0)
	end
	subroutine sub8(a)
	print *,(a-1.0) - (1.0-fun1())
	end
	subroutine sub9(a)
	print *,(1.0-a) - (1.0-fun1())
	end
	subroutine sub10(a)
	print *,fun1() - a
	end
	subroutine sub11(a)
	print *,fun1() - (a-1.0)
	end
	subroutine sub12(a)
	print *,fun1() - (1.0-a)
	end
	subroutine sub13(a)
	print *,(fun1()-1.0) - a
	end
	subroutine sub14(a)
	print *,(1.0-fun1()) - a
	end
	subroutine sub15(a)
	print *,(fun1()-1.0) - (a-1.0)
	end
	subroutine sub16(a)
	print *,(fun1()-1.0) - (1.0-a)
	end
	subroutine sub17(a)
	print *,(1.0-fun1()) - (a-1.0)
	end
	subroutine sub18(a)
	print *,(1.0-fun1()) - (1.0-a)
	end
	call sub1(2.0)
	call sub2(2.0)
	call sub3(2.0)
	call sub4(2.0)
	call sub5(2.0)
	call sub6(2.0)
	call sub7(2.0)
	call sub8(2.0)
	call sub9(2.0)
	call sub10(2.0)
	call sub11(2.0)
	call sub12(2.0)
	call sub13(2.0)
	call sub14(2.0)
	call sub15(2.0)
	call sub16(2.0)
	call sub17(2.0)
	call sub18(2.0)
	end
	real function fun1()
	fun1 = 2.0
	end
	real function fun2()
	fun2 = 1.0
	end
