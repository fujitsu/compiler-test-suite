	type TAG
	complex,pointer::c
	end type
	type(TAG) st
	allocate(st%c)
	st=st2()
	if (abs(st%c+(2.0,3.0)-(3,5)) >0.0001) print *,101
	deallocate(st%c)
        print *,'OK'
	contains
	function st2()
	type(TAG) st2
        call ss(st2)
	st2%c = (1.0,2.0)
	end function  
        subroutine ss(st)
	type(TAG) st
	allocate(st%c)
	end subroutine
	end
