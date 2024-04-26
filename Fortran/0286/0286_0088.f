        recursive subroutine test
	type TAG 
	character*12 c
	end type
	type(TAG) st
	st = fun('123456789012')
	if( st%c  == '123456789012' ) then
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
