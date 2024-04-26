	call test1
	call test2
	call test3
	end
	subroutine test3
	character*0 c1,c2
	c1 = c2
	print *,'NULL STRING ->',c1,c2
	end
	subroutine test2
	type TAG
	  character*0 c
	end type
	type(TAG)st,st2
	st2 = st
	print *,'NULL STRING ->',st2
	end
	subroutine test1
	type TAG
	  integer,dimension(0)::d
	end type
	type(TAG)st,st2
	st2 = st
	print *,'NULL STRING ->',st2
	end
