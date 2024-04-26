	structure /TAG/
	  integer i
	  integer j
	end structure
	record /TAG/st,p
	common/com/p,st
	common/c2/dd
	pointer p
	integer*2,pointer,dimension(:,:)::dd
	st.i = 1
	st.j = 1
	allocate(p)
	p.i = 1
	p.j = 1
	allocate(dd(2,1))
	dd = 4
        print *,'ok'
	end
