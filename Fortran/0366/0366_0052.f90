	module moda
	integer i
	integer j
	equivalence(i,j)
	end 
!
	program main
	use moda
	dimension a(1000)
	data a/1000*0/
	do i=1,1000
	  a(j) = a(i) + 1
	end do
	call sub(a)
	print *,sum(a)
	end
!
	subroutine sub(a)
	use moda
	dimension a(1000)
	do i=1,1000
	  a(j) = a(i) + 1
	end do
	end
