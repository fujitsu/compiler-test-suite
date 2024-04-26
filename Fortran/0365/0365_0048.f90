	subroutine sub1(a,s,n)
	dimension a(n),s(n)
	do i=1,n
	  s(i)=a(i)
	enddo
	end subroutine 
	subroutine sub2(a,s,n)
	dimension a(n),s(n)
	do i=1,n
	  s(i)=a(i)
	  if( a(i) .eq. 2 ) goto 20
	enddo
20	continue
	end subroutine 
	subroutine sub3(a,s,n)
	dimension a(n),s(n)
	if( n .eq. 3 ) goto 10
	do i=1,n
	  s(i)=a(i)
10	  continue
	  if( a(i) .eq. 2 ) goto 20
	enddo
20	continue
	end
	subroutine sub4(a,s,n)
	dimension a(n),s(n)
	do 
	  s(i)=a(i)
	enddo
	end subroutine 
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
	end
