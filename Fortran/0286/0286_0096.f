        recursive subroutine test
	type TAG 
	character*5 c
	end type
	type(TAG) st
	st = fun('12345')
	if( st%c  == '12345' ) then
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
