	subroutine sub
	integer,dimension(10000000)::i = 0
	print *,i(1),i(10000000)
	end
!
	call sub
	end
