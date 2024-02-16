	type TAG
	complex,pointer::c
	end type
	type(TAG) st
	allocate(st%c)
	call sub(st)
	print *,st%c+(2.0,3.0)
	deallocate(st%c)
	contains
	subroutine sub(st)
	type(TAG) st
	call foo(st%c)
	end subroutine
	subroutine foo(c)
	complex c
	c = (1.0,2.0)
	end subroutine
	end
