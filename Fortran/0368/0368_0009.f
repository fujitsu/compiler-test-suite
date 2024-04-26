	module moda
	integer,pointer::a
	integer,target::b
	data b/3/
	contains
	subroutine sub
	a=>b
	end subroutine
	end
	use moda
	call sub
        print *,'ok'
	end

