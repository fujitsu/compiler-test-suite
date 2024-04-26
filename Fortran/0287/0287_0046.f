	subroutine sub1(a,b)
	print *,a - b
	end
	subroutine sub2(a,b)
	print *,(a-1.0) - b
	end
	subroutine sub3(a,b)
	print *,(1.0-a) - b
	end
	subroutine sub4(a,b)
	print *,a - (b-1.0)
	end
	subroutine sub5(a,b)
	print *,a - (1.0-b)
	end
	subroutine sub6(a,b)
	print *,(a-1.0) - (b-1.0)
	end
	subroutine sub7(a,b)
	print *,(1.0-a) - (b-1.0)
	end
	subroutine sub8(a,b)
	print *,(a-1.0) - (1.0-b)
	end
	subroutine sub9(a,b)
	print *,(1.0-a) - (1.0-b)
	end
	call sub1(1.0,2.0)
	call sub2(1.0,2.0)
	call sub3(1.0,2.0)
	call sub4(1.0,2.0)
	call sub5(1.0,2.0)
	call sub6(1.0,2.0)
	call sub7(1.0,2.0)
	call sub8(1.0,2.0)
	call sub9(1.0,2.0)
	end
