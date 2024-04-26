	program main
	interface 
	  subroutine sub(i,p)
	  integer i
	  integer,pointer,optional:: p
	  end subroutine
	end interface
	integer,pointer::p
	call sub(i=0)
	call sub(i=1,p=p)
	print *,p
	end
	subroutine sub(i,p)
	integer i
	integer,pointer,optional:: p
	integer,target,save:: t/2/
	if( present(p) ) then
	  p=>t
	else
	  print *,' none '
	end if
	print *,i
	end subroutine
