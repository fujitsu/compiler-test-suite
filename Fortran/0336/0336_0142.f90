	recursive subroutine test
	character*2 ok
	ok = 'OK'
	call sub()
	contains
	recursive subroutine sub()
	character*4096 long 
	long = ok
	print *,long(1:2)
	end subroutine
	end
	program main
	call test
	end
