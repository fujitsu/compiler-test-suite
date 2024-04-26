	implicit none
        integer*8 i
	integer*4 i4(10)
        integer*8 i8(10)
	data i4/1,2,3,4,5,-6,-7,-8,-9,-1/
	do i=1,10
	i8(i) = i4(i) + 1_8
	end do
        print *,i8
	end
