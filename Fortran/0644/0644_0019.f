	structure /tag/
		integer*4 i
		real*8 d
	end structure
	record /tag/ st
	common /blk/a, st
	st.i = 10
	print *,'Result: ',st.i, st.d, st
        call flush(6)
	stop
	end
