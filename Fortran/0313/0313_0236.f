	subroutine sub(n)
	implicit none
        integer*8 i,n
	real*8    r8(12)
        integer*1 i1(12)
	data r8/1,2,3,4,5,6,7,8,9,10,11,12/
	do i=1,n
	i1(i) = r8(i) + 1.0_8
	end do
        print *,i1
	end
	call sub(12_8)
	end
