	implicit none
        integer*8 i
	real*8    r8(10)
        integer*4 i4(10)
	data r8/1,2,3,4,5,6,7,8,9,10/
	do i=1,10
	i4(i) = r8(i)
	end do
        print *,i4
	end
