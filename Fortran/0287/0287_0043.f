	subroutine sub1(a,b)
	print *,a + b
	end
	subroutine sub2(a,b)
	print *,(a+1.0) + b
	end
	subroutine sub3(a,b)
	print *,a + (b+1.0)
	end
	subroutine sub4(a,b)
	print *,(a+1.0) + (b+1.0)
	end
	call sub1(1.0,2.0)
	call sub2(1.0,2.0)
	call sub3(1.0,2.0)
	call sub4(1.0,2.0)
	end
