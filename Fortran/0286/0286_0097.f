        recursive subroutine test
	type TAG 
	character*6 c
	end type
	type(TAG) st
	st = fun('123456')
	if( st%c  == '123456' ) then
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
