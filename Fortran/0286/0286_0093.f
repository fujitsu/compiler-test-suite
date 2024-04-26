        recursive subroutine test
	type TAG 
	character*2 c
	end type
	type(TAG) st
	st = fun('ac')
	if( st%c  == 'ac' ) then
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
