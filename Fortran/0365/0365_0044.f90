	subroutine sub1(a,s,n)
	dimension a(n),s(n)
	do i=1,n
	  s(i)=a(i) 
	enddo
	end
	subroutine sub2(a,s,n)
	dimension a(n),s(n)
	j=1
	do i=1,n
	  s(j)=a(j) 
	  j=j+1
	enddo
	end
	subroutine sub3(a,s,n)
	dimension a(n),s(n)
	j=1
	do i=1,n
	  s(j)=a(i) 
	  j=j+1
	enddo
	end
	subroutine sub4(a,s,n)
	dimension a(n),s(n)
	j=1
	do i=1,n
	  s(i)=a(j) 
	  j=j+1
	enddo
	end
	subroutine sub5(a,s,n)
	dimension a(n),s(n)
	integer rc
	rc=1
	j=1
	do i=1,n
	  s(j)=a(j) 
	  j=j+rc
	enddo
	end
	subroutine sub6(a,s,n)
	dimension a(n),s(n)
	integer rc/1/
	j=1
	do i=1,n
	  s(j)=a(j) 
	  j=j+rc
	enddo
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
	a(1) = 1
	a(2) = 3
	call sub5(a,s,2)
	print *,s
	a(1) = 1
	a(2) = 3
	call sub6(a,s,2)
	print *,s
	end
