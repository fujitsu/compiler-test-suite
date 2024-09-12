	structure /tag/
	  integer i
	  structure inst
	    real r
	    integer ii
	  end structure
	  real*8 d
	end structure

	record /tag/ st
	st.d = 1.0
	st.inst.r = 2.0
        print *,'Result: ',st.d,st.inst.r
        call flush(6)
	stop
	end
