	subroutine sub1(a,s,n)
	dimension a(n),s(n)
	do i=1,n
	  s(i)=a(i) 
	enddo
	end
	subroutine sub2(a,s,n)
	dimension a(n),s(n)
	character*10 c
	do i=1,n
	  s(i)=a(i) 
	  c(i:i) = 'a'
	enddo
	print *,c(1:n)
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
	end
