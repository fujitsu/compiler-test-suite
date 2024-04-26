	subroutine sub(n,i1,i8)
	implicit none
        integer*8 i,n
	integer*1 i1(n)
        integer*8 i8(n)
	do i=1,n
	i1(i) = i8(i)
	end do
	end
	integer*1 i1(10)
        integer*8 i8(10)
	data i8/1,2,3,4,5,6,7,8,9,10/
	call sub(10_8,i1,i8)
        print *,i1
	end
