	recursive subroutine sub
	integer*8 len
	parameter(len = 600000)
	dimension a(len)
	a(1) =1.0
	a(len) = 2.0
	print *,a(1),a(len)
	end
        print *,' PASS '
	end
