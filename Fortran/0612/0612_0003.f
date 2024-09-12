	assign 10 to i
	goto i
20	call sub
10	continue
	print *,' PASS '
	end
	subroutine sub
	print *,' NG '
	end
