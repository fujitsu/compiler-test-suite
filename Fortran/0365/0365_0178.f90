!
	subroutine test(a)
	common/com/s
	dimension a(1000)
	do i=1,1000
	 a(i) = a(i) + 1.0
	 s=s+a(i)
	end do
	end 
!
	program main
	common/com/s
	dimension a(1000)
	a=1
        s=0
	call test(a)
	print *,s
	end
