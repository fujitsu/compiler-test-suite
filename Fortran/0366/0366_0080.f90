	program main
	dimension a(0:1000)
	dimension b(0:1000)
	data b/1001*0/
	equivalence(a(1),b)
	do i=0,999
	  a(i) = b(i) + 1
	end do
	print *,sum(a)
	call sub
	end
!
        module moda
	dimension x(0:1000)
	dimension y(0:1000)
	data y/1001*0/
	equivalence(x(1),y)
	end module
!
	subroutine sub()
	use moda,a=>x,b=>y
	do i=0,999
	  a(i) = b(i) + 1
	end do
	print *,sum(a)
	end
