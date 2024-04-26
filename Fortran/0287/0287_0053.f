	subroutine sub(a,b,n)
	dimension a(n),b(n)
	do i=1,n
        A(I) = A(i) * B(i)
	end do
	end
!
	dimension a(10000), b(10000)
	a = 1
	b = 2
	call sub(a,b,10000)
	print *,a(100)
	end
