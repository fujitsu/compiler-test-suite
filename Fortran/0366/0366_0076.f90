!
	program main
	dimension a(1000)
	dimension b(1000)
	integer b
	data b/1000*0/
	equivalence(a,b)
	call inn
	print *,sum(a)
	call sub
	contains
	recursive subroutine inn
	do i=1,1000
	  a(i) = b(i) + 1
	end do
	end subroutine
	end
!
        module moda
	dimension x(1000)
	dimension y(1000)
	integer y
	data y/1000*0/
	equivalence(x,y)
	end module
!
	subroutine sub()
	use moda,a=>x
	call inn
	print *,sum(a)
	contains
	subroutine inn
	use moda,b=>y
	do i=1,1000
	  a(i) = b(i) + 1
	end do
	end subroutine
	end
