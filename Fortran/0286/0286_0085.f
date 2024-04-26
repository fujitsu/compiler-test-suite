	recursive subroutine test
	type TAG 
	character*1 c
	end type
	type(TAG) st
	st = fun('c')
	if( st%c  == 'c' ) then
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
