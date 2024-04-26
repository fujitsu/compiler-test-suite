	implicit none
        integer*8 i
	real*4    r4(10)
        integer*8 i8(10)
	data i8/1,2,3,4,5,6,7,8,9,10/
	do i=1,10
	r4(i) = i8(i)
	end do
        print *,r4
	end
