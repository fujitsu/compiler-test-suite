	subroutine sub(ac16)
	implicit none
        integer*8 i
	complex*16 ac16(16)
        complex*16 bc16(16)
	do i=1,16
	bc16(i) = ac16(i) + 3.0
	end do
        print *,bc16
	end
	complex*16 ac16(16)
	data ac16/-1,-2,-3,-4,-5,-6,1,2,3,4,5,6,7,8,9,10/
	call sub(ac16)
	end
