        recursive subroutine test
	type TAG 
	character*14 c
	end type
	type(TAG) st
	st = fun('0123456789abcd')
	if( st%c  == '0123456789abcd' ) then
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
