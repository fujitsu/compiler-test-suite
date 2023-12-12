module m1
	type TAG
	complex,pointer::c
	end type
contains
 subroutine xxx
	type(TAG) st
	allocate(st%c)
	call sub(st)
	if (abs(st%c+(2.0,3.0)-(3,5)) >0.0001) print *,101
	deallocate(st%c)
end subroutine
	subroutine sub1(st)
	entry      sub(st)
	type(TAG) st
	call foo(st%c)
	end subroutine
	subroutine foo(c)
	complex c
	c = (1.0,2.0)
	end subroutine
	end
use m1
call xxx
        print *,'OK'
end
