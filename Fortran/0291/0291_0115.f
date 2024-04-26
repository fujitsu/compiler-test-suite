	call test1
	call test2
	print *,' PASS '
	end
	subroutine test1
	common/com/p
	interface 
	  subroutine sub1(t)
	  integer,target::t
	  end subroutine 
	end interface
	integer,target::t
	integer,pointer::p
	t = 1
	call sub1(t)
	if( p /= 1 ) print *,' NG '
	end
	subroutine sub1(t)
	integer,target::t
	common/com/p
	integer,pointer::p
	p=>t
	end
!
	subroutine test2
	interface 
	  subroutine sub2(t,p)
	  integer,target::t
	  integer,pointer::p
	  end subroutine 
	end interface
	integer,target::t
	integer,pointer::p
	t = 1
	call sub2(t,p)
	if( p /= 1 ) print *,' NG '
	end
	subroutine sub2(t,p)
	integer,target::t
	integer,pointer::p
	p=>t
	end
