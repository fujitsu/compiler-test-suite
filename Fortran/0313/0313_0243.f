	implicit none
        integer*8 i
	complex*16 c16a(10)
        complex*16 c16b(10)
	data c16a/1,2,3,4,5,6,7,8,9,10/
	data c16b/2,2,2,2,2,2,2,2,2,2/
	do i=1,10
	c16b(i) = c16a(i) / c16b(i)
	end do
        print *,c16b
	end
