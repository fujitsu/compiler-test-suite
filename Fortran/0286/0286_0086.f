        recursive subroutine test
	type TAG 
	character*10 c
	end type
	type(TAG) st
	st = fun('1234567890')
	if( st%c  == '1234567890' ) then
	print *,"PASS"
	else
	print *,"NG"
        endif
	contains
	function fun(c) 
	type(TAG) fun
	character*(*) c
	fun%c = c
	end function
	end
	call test
	end
