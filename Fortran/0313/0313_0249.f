	subroutine sub
	common/com/r4,n
	real*4   r4(10)
	do i=1,n
	r4(i) = i
	end do
        print *,int(r4)
	end 
        common/com/r4,n
        real*4   r4(10)
        n = 10
	call sub
	end
