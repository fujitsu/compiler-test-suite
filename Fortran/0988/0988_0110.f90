        module moda
	dimension x(1000)
	dimension y(0:1000)
	data y/1001*0/
	equivalence(x,y)
	end module
        module modb
	dimension a(1000)
	dimension b(0:1000)
	data b/1001*0/
	equivalence(a,b)
	contains
	subroutine sub()
	use moda,a=>x,b=>y
	do i=1,999
	  a(i) = b(i) + 1
	end do
	print *,sum(a)
	end subroutine 
	subroutine test()
	call inn
	contains
	subroutine inn
	do i=1,999
	  a(i) = b(i) + 1
	end do
	end subroutine
	end subroutine
	end
	program main
	use modb
	call test
	print *,sum(a)
	call sub
	end
