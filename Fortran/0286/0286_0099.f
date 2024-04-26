        recursive subroutine test
	type TAG 
	character*8 c
	end type
	type(TAG) st
	st = fun('01234567')
	if( st%c  == '01234567' ) then
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
