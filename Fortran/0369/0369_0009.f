
	subroutine test1
	structure /TAG/
	integer*1 a
	integer*1 b
	end structure
	record/TAG/ st
        st.a = 0
        st.b = 0
	print *,st
	end 

	subroutine test2
	structure /TAG/
	integer*1 a
	integer*1 b
	end structure
	record/TAG/ st
	data st.a/"AB"/
	print *,st
	end 

	subroutine test3
	structure /TAG/
	integer*1 a
	integer*1 b
	end structure
	record/TAG/ st
	data st.a/z'12'/
	print 1,st
1	format(1h ,2z2.2)
	end 

	subroutine test4
	structure /TAG/
	integer*1 a
	integer*1 b
	end structure
	record/TAG/ st
	data st.a/z'1234'/
	print 1,st
1	format(1h ,2z2.2)
	end 

	call test1
	call test2
	call test3
	call test4
	end

