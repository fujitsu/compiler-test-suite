	subroutine test
	integer*8,parameter::len = 256_8
	common /com/ a(len)
	a(1) =1.0
	a(len) = 2.0
	end
	print *,' PASS '
	end
