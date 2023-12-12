	type TAG
	complex,pointer::c
	end type
	type(TAG) st,call,st2
	allocate(st%c)
	st2=sub(st%c)
	if (abs(st2%c+(2.0,3.0)-(3,5)) >0.0001) print *,101
	deallocate(st2%c)
        print *,'OK'
	contains
	function  sub(x)
	type(TAG) sub
	complex,pointer::x
	sub%c=>x
	call foo(sub%c)
	end function
	subroutine foo(c)
	complex c
	c = (1.0,2.0)
	end subroutine
	end
