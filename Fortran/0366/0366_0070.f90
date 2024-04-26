	program main
	dimension a(1000)
	data a/1000*0/
	dimension b(1000)
	equivalence(a,b)
	call inn
	print *,sum(a)
	call sub
	contains
	subroutine inn
	do i=1,999
	  a(i+1) = b(i) + 1
	end do
	end subroutine 
	end
!
        module moda
	dimension a(1000)
	data a/1000*0/
	end module
!
        module modb
	use moda
	end module
!
	subroutine sub()
	use moda
	use modb,b=>a
	call inn
	print *,sum(a)
	contains
	subroutine inn
	do i=1,999
	  a(i+1) = b(i) + 1
	end do
	end subroutine 
	end
