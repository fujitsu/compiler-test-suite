	type TAG
	complex,pointer::c
	end type
	type(TAG) st
	allocate(st%c)
	call sub()
	if (abs(st%c+(2.0,3.0)-(3,5)) >0.0001) print *,101
	deallocate(st%c)
        print *,'OK'
	contains
	subroutine sub()
	st%c = (1.0,2.0)
	end subroutine
	end
