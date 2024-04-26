	module moda
	integer k
	end 
!
	program main
	use moda,j=>k,i=>k
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
	use moda,j=>k,i=>k
	dimension a(1000)
	do i=1,1000
	  a(j) = a(i) + 1
	end do
	end
