        recursive subroutine test
	type TAG 
	character*11 c
	end type
	type(TAG) st
	st = fun('12345678901')
	if( st%c  == '12345678901' ) then
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
