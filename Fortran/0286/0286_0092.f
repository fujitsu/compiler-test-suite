        recursive subroutine test
	type TAG 
	character*16 c
	end type
	type(TAG) st
	st = fun('0123456789abcdef')
	if( st%c  == '0123456789abcdef' ) then
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
