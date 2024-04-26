	implicit none
	common/com/i1
        integer*8 i
	integer*1 i1(10)
        integer*8 i8(10)
	i8 = 0
	do i=1,8
	i8(i) = i1(i)
	end do
        print *,i8
	end
	block data
	common/com/i1
	integer*1 i1(10)
	data i1/1,2,3,4,5,-6,-7,-8,-9,-1/
	end
