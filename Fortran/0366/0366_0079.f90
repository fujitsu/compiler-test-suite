!
        call test
	call sub
	end
!
        recursive subroutine test
	dimension a(1000)
	dimension b(1000,2)
	data b/2000*0/
	equivalence(a,b)
	call inn
	print *,sum(a)
	contains
	recursive subroutine inn
	do i=1,1000
	  a(i) = b(i,1) + 1
	end do
	end subroutine
	end
!
        module moda
	dimension x(1000)
	dimension y(1000,2)
	data y/2000*0/
	equivalence(x,y)
	end module
!
        module modb
	contains
	subroutine test
	use moda,a=>x,b=>y
	do i=1,1000
	  a(i) = b(i,1) + 1
	end do
	print *,sum(a)
	end subroutine
	end 
!
	subroutine sub()
	use modb
	call test
	end
