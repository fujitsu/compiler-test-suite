        subroutine test1
	common/com/dummy,a
	dimension a(1000)
	a=0
	call inline1(a)
	print *,sum(a)
	end
!
        subroutine inline1(a)
	common/com/b,dummy
	dimension b(1000),a(1000)

	do i=1,1000
	  a(i) = b(i) + 1
	end do
	end
!
	block data
	common/com/b,dummy
	dimension b(1000)
	data b/1000*0/
	end
!
        module moda
	dimension x(1000)
	dimension y(1000)
	data y/1000*0/
	equivalence(x,y(2))
	end module
!
	subroutine test2
	use moda,a=>x
	call inline2(a)
	print *,sum(a)
	end
!
	subroutine inline2(a)
	use moda,b=>y
	dimension a(1000)

	do i=1,1000
	  a(i) = b(i) + 1
	end do
	end
!
	call test1
	call test2
	end
