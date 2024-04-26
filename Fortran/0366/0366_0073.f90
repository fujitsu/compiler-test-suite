        module moda
	dimension x(1000)
	dimension y(1000)
	data y/1000*0/
	equivalence(x,y(2))
	end module
!
        module com
	contains
	subroutine sub()
	use moda,a=>x,b=>y
	call inn
	print *,sum(a)
	contains
	subroutine inn
	do i=1,1000
	  a(i) = b(i) + 1
	end do
	end subroutine
	end subroutine
	end
!
	program main
	use com
	dimension a(1000)
	dimension b(1000)
	data b/1000*0/
	equivalence(a,b(2))
	call inn
	print *,sum(a)
	call sub
	contains
	subroutine inn
	do i=1,1000
	  a(i) = b(i) + 1
	end do
	end subroutine
	end
