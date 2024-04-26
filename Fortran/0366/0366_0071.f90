!
        block data
	common/com/a
	dimension a(1000)
	data a/1000*0/
	common/xxx/b
	dimension b(1000)
	data b/1000*0/
	end
!
	program main
	common/com/a
	dimension a(1000)
	dimension b(1000)
	equivalence(a,b)
	do i=1,999
	  a(i+1) = b(i) + 1
	end do
	print *,sum(a)
	call sub1
	call sub2
	end
!
        module moda
	common/xxx/a
	dimension a(1000)
	end module
!
        module modb
	use moda
	end module
!
	subroutine sub1()
	use moda
	use modb,b=>a
	do i=1,999
	  a(i+1) = b(i) + 1
	end do
	print *,sum(a)
	end
!
	subroutine sub2()
	use moda,b=>a
	common/xxx/a
	dimension a(1000)
	do i=1,999
	  a(i+1) = b(i) + 1
	end do
	print *,sum(a)
	end
