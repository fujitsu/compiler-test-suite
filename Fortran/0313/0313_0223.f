	subroutine sub(n,i4,i8)
	implicit none
        integer*8 i,n
	integer*4 i4(n)
        integer*8 i8(n)
	do i=1,n
	i4(i) = i8(i)
	end do
	end
	integer*4 i4(10)
        integer*8 i8(10)
	data i8/1,2,3,4,5,6,7,8,9,10/
	call sub(10_8,i4,i8)
        print *,i4
	end
