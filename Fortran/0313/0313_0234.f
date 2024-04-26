	implicit none
        integer*8 i
	real*4    r4(10)
        integer*8 i8(10)
	data r4/1,2,3,4,5,6,7,8,9,10/
	do i=1,10
	i8(i) = r4(i) + 1.
	end do
        print *,i8
	end
