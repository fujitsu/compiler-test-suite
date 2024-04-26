	implicit none
        integer*8 i
	real*4    r4(10)
        integer*4 i4(10)
	data i4/1,2,3,4,5,6,7,8,9,10/
	do i=1,10
	r4(i) = i4(i)
	end do
        print *,r4
	end
