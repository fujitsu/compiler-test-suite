	implicit none
	common/com/i1
        integer*8 i
	integer*1 i1(10)
        integer*4 i4(10)
	i4 = 0
	do i=1,8
	i4(i) = i1(i)
	end do
        print *,i4
	end
	block data
	common/com/i1
	integer*1 i1(10)
	data i1/1,2,3,4,5,-6,-7,-8,-9,-1/
	end
