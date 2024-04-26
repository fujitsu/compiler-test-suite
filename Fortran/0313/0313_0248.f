	subroutine sub
	common/com/i8,n
	integer*8   i8(10)
	do i=1,n
	i8(i) = i
	end do
        print *,i8
	end 
        common/com/i8,n
        integer*8   i8(10)
        n = 10
	call sub
	end
