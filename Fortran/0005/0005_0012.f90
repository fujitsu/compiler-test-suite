	type TAG
	complex,allocatable::c
	end type
	type(TAG) st
	allocate(st%c)
	call sub(st)
	if (abs(st%c+(2.0,3.0)-(3,5)) >0.0001) print *,101
	deallocate(st%c)
        print *,'OK'
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
