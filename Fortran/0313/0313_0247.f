	subroutine sub
	common/com/i4,n
	integer*4   i4(10)
	do i=1,n
	i4(i) = i
	end do
        print *,i4
	end 
	common/com/i4,n
	integer*4   i4(10)
	n = 10
	call sub
	end
