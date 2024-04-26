	subroutine sub
	common/com/r8,n
	real*8   r8(10)
	do i=1,n
	r8(i) = i
	end do
        print *,int(r8)
	end 
        common/com/r8,n
	real*8   r8(10)
        n = 10
	call sub
	end
