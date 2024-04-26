	subroutine sub1(a,s,n)
	dimension a(n),s(n)
	do i=1,n
	  s(i)=a(i) 
	enddo
	end
	subroutine sub2(a,s,n)
	dimension a(n),s(n)
	logical flag
	flag = .true.
	do i=1,n
	  s(i)=a(i) 
	  if( s(i) .eq. 3 ) flag = .false.
	enddo
	print *,flag
	end
	subroutine sub3(a,s,n)
	dimension a(n),s(n)
	structure /TAG/
	  integer i
	end structure
	record /TAG/ st
	st.i = 1
	do i=1,n
	  s(i)=a(i) 
	  if( s(i) .eq. 3 ) st.i = 2
	enddo
	print *,st.i
	end
	subroutine sub4(a,s,n)
	dimension a(n),s(n)
	complex cmpx
	flag = 1.
	do i=1,n
	  s(i)=a(i) 
	  if( s(i) .eq. 3 ) cmpx = 2.
	enddo
	print *,cmpx
	end
	dimension a(2),s(2)
	a(1) = 1
	a(2) = 3
	call sub1(a,s,2)
	print *,s
	a(1) = 1
	a(2) = 3
	call sub2(a,s,2)
	print *,s
	a(1) = 1
	a(2) = 3
	call sub3(a,s,2)
	print *,s
	a(1) = 1
	a(2) = 3
	call sub4(a,s,2)
	print *,s
	end
