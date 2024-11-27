	program main
	dimension a(1000)
	data a/1000*0/
	dimension b(1000)
	equivalence(a,b)
	do i=1,999
	  a(i+1) = b(i) + 1
	end do
	print *,sum(a)
	call sub
	end
        module moda
	dimension a(1000)
	data a/1000*0/
	end module
        module modb
	use moda
	end module
	subroutine sub()
	use moda
	use modb,b=>a
	do i=1,999
	  a(i+1) = b(i) + 1
	end do
	print *,sum(a)
	end
