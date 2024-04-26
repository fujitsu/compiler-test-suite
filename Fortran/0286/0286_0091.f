        recursive subroutine test
	type TAG 
	character*15 c
	end type
	type(TAG) st
	st = fun('012345678901234')
	if( st%c  == '012345678901234' ) then
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
