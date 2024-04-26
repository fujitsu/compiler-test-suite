!
	subroutine test1
	common/com/a
	dimension a(1000),b(1000)
	integer b
	data b/1000*0/
	equivalence(a,b)
	call sub1(b)
	print *,sum(a)
	end
!
        subroutine sub1(b)
	common/com/a
	dimension a(1000),b(1000)
	integer b
	do i=1,1000
	  a(i) = b(i) + 1
	end do
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
	subroutine test2()
	use moda,b=>y
	call sub2(b)
	print *,sum(x)
	end
!
	subroutine sub2(b)
	use moda,a=>x
	dimension b(1000)
	integer b
	do i=1,1000
	  a(i) = b(i) + 1
	end do
	end 
!
	call test1
	call test2
	end
