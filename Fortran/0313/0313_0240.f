	subroutine sub(n)
	implicit none
        integer*8 i,n
	real*8    r8(12)
        integer*8 i8(12)
	data r8/1,2,3,4,5,6,7,8,9,10,11,12/
	do i=1,n
	i8(i) = r8(i) + 1.0_8
	end do
        print *,i8
	end
	call sub(12_8)
	end
