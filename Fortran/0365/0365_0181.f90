	subroutine test2(a)
	common/com/s,r,b
	dimension a(1000)
	dimension b(1000)
	do i=1,1000
	 a(i) = a(i) + 1.0
	 s=s+1
	 b(i) = b(i) + 1.0
	end do
	end 
!
	subroutine test1(a)
	common/com/s,r
	dimension a(1000)
	do i=1,1000
	 s=s+1
	 a(i) = a(i) + 1.0
	 r=r+i
	end do
	end 
!
	program main
	common/com/s,r,b
	dimension a(1000)
	dimension b(1000)
	a=1
	b=2
        s=0
        r=0
	call test1(a)
	print *,s,r,a(1),a(1000)
	call test2(a)
	print *,s,r,a(1),a(1000),b(1),b(1000)
	end
