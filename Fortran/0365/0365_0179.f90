!
	subroutine test(a)
	common/com/s
	dimension a(1000)
	do i=1,1000
	 s=s+a(i)
	 a(i) = a(i) + 1.0
	end do
	end 
!
	program main
	common/com/s
	dimension a(1000)
	a=1
        s=0
	call test(a)
	print *,s,a(1),a(1000)
	end
