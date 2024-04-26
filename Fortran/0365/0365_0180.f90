!
	subroutine test(a)
	common/com/s,r
	dimension a(1000)
	do i=1,1000
	 s=s+a(i)
	 a(i) = a(i) + 1.0
	 r=r+a(i)
	end do
	end 
!
	program main
	common/com/s,r
	dimension a(1000)
	a=1
        s=0
        r=0
	call test(a)
	print *,s,r,a(1),a(1000)
	end
