	interface
	  subroutine sub(i)
	    integer,intent(in)::i
	  end subroutine
	end interface
	i=1
	call sub(i)
	end
	subroutine sub(j)
	integer,intent(in)::j
	print *,j
	end
