	implicit none
	common/com/i1
        integer*8 i
	integer*1 i1(10)
        real*8 r8(10)
        r8 = 0
	do i=1,8
	r8(i) = i1(i)
	end do
        print *,r8
	end
	block data
	common/com/i1
	integer*1 i1(10)
	data i1/1,2,3,4,5,-6,-7,-8,-9,-1/
	end
